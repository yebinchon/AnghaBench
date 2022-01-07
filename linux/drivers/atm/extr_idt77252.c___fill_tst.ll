; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_idt77252.c___fill_tst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_idt77252.c___fill_tst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt77252_dev = type { i32, i64*, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.vc_map* }
%struct.vc_map = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"%s: No free TST entries found\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"%s: conn %d: first TST entry at %d.\0A\00", align 1
@TSTE_OPC_MASK = common dso_local global i32 0, align 4
@TSTE_OPC_NULL = common dso_local global i32 0, align 4
@TSTE_PUSH_ACTIVE = common dso_local global i32 0, align 4
@TSTE_PUSH_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idt77252_dev*, %struct.vc_map*, i32, i32)* @__fill_tst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__fill_tst(%struct.idt77252_dev* %0, %struct.vc_map* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.idt77252_dev*, align 8
  %7 = alloca %struct.vc_map*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.idt77252_dev* %0, %struct.idt77252_dev** %6, align 8
  store %struct.vc_map* %1, %struct.vc_map** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %17 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %18, 2
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %11, align 8
  store i32 0, i32* %13, align 4
  br label %21

21:                                               ; preds = %38, %4
  %22 = load i32, i32* %13, align 4
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* %11, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %21
  %27 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %28 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %27, i32 0, i32 3
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %13, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load %struct.vc_map*, %struct.vc_map** %33, align 8
  %35 = icmp eq %struct.vc_map* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  br label %41

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %13, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %13, align 4
  br label %21

41:                                               ; preds = %36, %21
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* %11, align 8
  %45 = icmp uge i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %48 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %49)
  store i32 -1, i32* %5, align 4
  br label %195

51:                                               ; preds = %41
  %52 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %53 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.vc_map*, %struct.vc_map** %7, align 8
  %56 = icmp ne %struct.vc_map* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load %struct.vc_map*, %struct.vc_map** %7, align 8
  %59 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  br label %62

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %61, %57
  %63 = phi i32 [ %60, %57 ], [ -1, %61 ]
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @NPRINTK(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %63, i32 %64)
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %14, align 4
  %67 = load i64, i64* %11, align 8
  store i64 %67, i64* %10, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @TSTE_OPC_MASK, align 4
  %70 = and i32 %68, %69
  store i32 %70, i32* %15, align 4
  %71 = load %struct.vc_map*, %struct.vc_map** %7, align 8
  %72 = icmp ne %struct.vc_map* %71, null
  br i1 %72, label %73, label %83

73:                                               ; preds = %62
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @TSTE_OPC_NULL, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.vc_map*, %struct.vc_map** %7, align 8
  %80 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %78, %81
  store i32 %82, i32* %15, align 4
  br label %83

83:                                               ; preds = %77, %73, %62
  %84 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %85 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %84, i32 0, i32 1
  %86 = load i64*, i64** %85, align 8
  %87 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %88 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = xor i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %86, i64 %91
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %12, align 8
  br label %94

94:                                               ; preds = %189, %83
  %95 = load i32, i32* %14, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %194

97:                                               ; preds = %94
  %98 = load i64, i64* %10, align 8
  %99 = load i64, i64* %11, align 8
  %100 = icmp uge i64 %98, %99
  br i1 %100, label %101, label %182

101:                                              ; preds = %97
  %102 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %103 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %102, i32 0, i32 3
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = load i32, i32* %13, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load %struct.vc_map*, %struct.vc_map** %108, align 8
  %110 = icmp eq %struct.vc_map* %109, null
  br i1 %110, label %111, label %182

111:                                              ; preds = %101
  %112 = load %struct.vc_map*, %struct.vc_map** %7, align 8
  %113 = icmp ne %struct.vc_map* %112, null
  br i1 %113, label %114, label %123

114:                                              ; preds = %111
  %115 = load %struct.vc_map*, %struct.vc_map** %7, align 8
  %116 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %117 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %116, i32 0, i32 3
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = load i32, i32* %13, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  store %struct.vc_map* %115, %struct.vc_map** %122, align 8
  br label %131

123:                                              ; preds = %111
  %124 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %125 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %124, i32 0, i32 3
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = load i32, i32* %13, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 1
  store %struct.vc_map* inttoptr (i64 -1 to %struct.vc_map*), %struct.vc_map** %130, align 8
  br label %131

131:                                              ; preds = %123, %114
  %132 = load i32, i32* %15, align 4
  %133 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %134 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %133, i32 0, i32 3
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = load i32, i32* %13, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  store i32 %132, i32* %139, align 8
  %140 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %141 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %140, i32 0, i32 4
  %142 = call i64 @timer_pending(i32* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %155

144:                                              ; preds = %131
  %145 = load i32, i32* @TSTE_PUSH_ACTIVE, align 4
  %146 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %147 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %146, i32 0, i32 3
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = load i32, i32* %13, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %145
  store i32 %154, i32* %152, align 8
  br label %173

155:                                              ; preds = %131
  %156 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %157 = load i64, i64* %12, align 8
  %158 = load i32, i32* %13, align 4
  %159 = sext i32 %158 to i64
  %160 = add i64 %157, %159
  %161 = load i32, i32* %15, align 4
  %162 = call i32 @write_sram(%struct.idt77252_dev* %156, i64 %160, i32 %161)
  %163 = load i32, i32* @TSTE_PUSH_IDLE, align 4
  %164 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %165 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %164, i32 0, i32 3
  %166 = load %struct.TYPE_2__*, %struct.TYPE_2__** %165, align 8
  %167 = load i32, i32* %13, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = or i32 %171, %163
  store i32 %172, i32* %170, align 8
  br label %173

173:                                              ; preds = %155, %144
  %174 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %175 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = sext i32 %176 to i64
  %178 = load i64, i64* %10, align 8
  %179 = sub i64 %178, %177
  store i64 %179, i64* %10, align 8
  %180 = load i32, i32* %14, align 4
  %181 = add nsw i32 %180, -1
  store i32 %181, i32* %14, align 4
  br label %182

182:                                              ; preds = %173, %101, %97
  %183 = load i32, i32* %13, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %13, align 4
  %185 = sext i32 %184 to i64
  %186 = load i64, i64* %11, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %189

188:                                              ; preds = %182
  store i32 0, i32* %13, align 4
  br label %189

189:                                              ; preds = %188, %182
  %190 = load i32, i32* %8, align 4
  %191 = sext i32 %190 to i64
  %192 = load i64, i64* %10, align 8
  %193 = add i64 %192, %191
  store i64 %193, i64* %10, align 8
  br label %94

194:                                              ; preds = %94
  store i32 0, i32* %5, align 4
  br label %195

195:                                              ; preds = %194, %46
  %196 = load i32, i32* %5, align 4
  ret i32 %196
}

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @NPRINTK(i8*, i32, i32, i32) #1

declare dso_local i64 @timer_pending(i32*) #1

declare dso_local i32 @write_sram(%struct.idt77252_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
