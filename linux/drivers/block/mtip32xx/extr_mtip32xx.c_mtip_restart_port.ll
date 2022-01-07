; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_restart_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_restart_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtip_port = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@PORT_CMD = common dso_local global i64 0, align 8
@PORT_CMD_LIST_ON = common dso_local global i32 0, align 4
@MTIP_DDF_REMOVE_PENDING_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"PxCMD.CR not clear, escalating reset\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"HBA reset escalation failed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Issuing COM reset\0A\00", align 1
@PORT_SCR_CTL = common dso_local global i64 0, align 8
@PORT_SCR_STAT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"COM reset failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtip_port*)* @mtip_restart_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtip_restart_port(%struct.mtip_port* %0) #0 {
  %2 = alloca %struct.mtip_port*, align 8
  %3 = alloca i64, align 8
  store %struct.mtip_port* %0, %struct.mtip_port** %2, align 8
  %4 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %5 = call i32 @mtip_enable_engine(%struct.mtip_port* %4, i32 0)
  %6 = load i64, i64* @jiffies, align 8
  %7 = call i64 @msecs_to_jiffies(i32 500)
  %8 = add i64 %6, %7
  store i64 %8, i64* %3, align 8
  br label %9

9:                                                ; preds = %26, %1
  %10 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %11 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PORT_CMD, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl(i64 %14)
  %16 = load i32, i32* @PORT_CMD_LIST_ON, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %9
  %20 = load i64, i64* @jiffies, align 8
  %21 = load i64, i64* %3, align 8
  %22 = call i64 @time_before(i64 %20, i64 %21)
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %19, %9
  %25 = phi i1 [ false, %9 ], [ %23, %19 ]
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  br label %9

27:                                               ; preds = %24
  %28 = load i32, i32* @MTIP_DDF_REMOVE_PENDING_BIT, align 4
  %29 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %30 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = call i64 @test_bit(i32 %28, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %185

36:                                               ; preds = %27
  %37 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %38 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @PORT_CMD, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @readl(i64 %41)
  %43 = load i32, i32* @PORT_CMD_LIST_ON, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %69

46:                                               ; preds = %36
  %47 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %48 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = call i32 @dev_warn(i32* %52, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %54 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %55 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = call i64 @mtip_hba_reset(%struct.TYPE_4__* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %46
  %60 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %61 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = call i32 @dev_err(i32* %65, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %67

67:                                               ; preds = %59, %46
  %68 = call i32 @mdelay(i32 30)
  br label %69

69:                                               ; preds = %67, %36
  %70 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %71 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = call i32 @dev_warn(i32* %75, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %77 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %78 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @PORT_SCR_CTL, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @readl(i64 %81)
  %83 = or i32 %82, 1
  %84 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %85 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @PORT_SCR_CTL, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @writel(i32 %83, i64 %88)
  %90 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %91 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @PORT_SCR_CTL, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @readl(i64 %94)
  %96 = load i64, i64* @jiffies, align 8
  %97 = call i64 @msecs_to_jiffies(i32 1)
  %98 = add i64 %96, %97
  store i64 %98, i64* %3, align 8
  br label %99

99:                                               ; preds = %104, %69
  %100 = load i64, i64* @jiffies, align 8
  %101 = load i64, i64* %3, align 8
  %102 = call i64 @time_before(i64 %100, i64 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  br label %99

105:                                              ; preds = %99
  %106 = load i32, i32* @MTIP_DDF_REMOVE_PENDING_BIT, align 4
  %107 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %108 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %107, i32 0, i32 0
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = call i64 @test_bit(i32 %106, i32* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  br label %185

114:                                              ; preds = %105
  %115 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %116 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @PORT_SCR_CTL, align 8
  %119 = add nsw i64 %117, %118
  %120 = call i32 @readl(i64 %119)
  %121 = and i32 %120, -2
  %122 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %123 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @PORT_SCR_CTL, align 8
  %126 = add nsw i64 %124, %125
  %127 = call i32 @writel(i32 %121, i64 %126)
  %128 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %129 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @PORT_SCR_CTL, align 8
  %132 = add nsw i64 %130, %131
  %133 = call i32 @readl(i64 %132)
  %134 = load i64, i64* @jiffies, align 8
  %135 = call i64 @msecs_to_jiffies(i32 500)
  %136 = add i64 %134, %135
  store i64 %136, i64* %3, align 8
  br label %137

137:                                              ; preds = %153, %114
  %138 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %139 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @PORT_SCR_STAT, align 8
  %142 = add nsw i64 %140, %141
  %143 = call i32 @readl(i64 %142)
  %144 = and i32 %143, 1
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %137
  %147 = load i64, i64* @jiffies, align 8
  %148 = load i64, i64* %3, align 8
  %149 = call i64 @time_before(i64 %147, i64 %148)
  %150 = icmp ne i64 %149, 0
  br label %151

151:                                              ; preds = %146, %137
  %152 = phi i1 [ false, %137 ], [ %150, %146 ]
  br i1 %152, label %153, label %154

153:                                              ; preds = %151
  br label %137

154:                                              ; preds = %151
  %155 = load i32, i32* @MTIP_DDF_REMOVE_PENDING_BIT, align 4
  %156 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %157 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %156, i32 0, i32 0
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 1
  %160 = call i64 @test_bit(i32 %155, i32* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %154
  br label %185

163:                                              ; preds = %154
  %164 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %165 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @PORT_SCR_STAT, align 8
  %168 = add nsw i64 %166, %167
  %169 = call i32 @readl(i64 %168)
  %170 = and i32 %169, 1
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %180

172:                                              ; preds = %163
  %173 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %174 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %173, i32 0, i32 0
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 0
  %179 = call i32 @dev_warn(i32* %178, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %180

180:                                              ; preds = %172, %163
  %181 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %182 = call i32 @mtip_init_port(%struct.mtip_port* %181)
  %183 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %184 = call i32 @mtip_start_port(%struct.mtip_port* %183)
  br label %185

185:                                              ; preds = %180, %162, %113, %35
  ret void
}

declare dso_local i32 @mtip_enable_engine(%struct.mtip_port*, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i64 @mtip_hba_reset(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @mtip_init_port(%struct.mtip_port*) #1

declare dso_local i32 @mtip_start_port(%struct.mtip_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
