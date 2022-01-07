; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_ambassador.c_amb_talk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_ambassador.c_amb_talk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_26__*, %struct.TYPE_22__, %struct.TYPE_19__ }
%struct.TYPE_26__ = type { i32, %struct.TYPE_24__, %struct.TYPE_23__ }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__, %struct.TYPE_20__ }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { i64, %struct.TYPE_25__*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_25__ = type { i32, i8*, i8*, i8*, i8* }

@DBG_FLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"amb_talk %p\00", align 1
@NUM_RX_POOLS = common dso_local global i8 0, align 1
@amb_mem = common dso_local global i32 0, align 4
@doorbell = common dso_local global i32 0, align 4
@DBG_INIT = common dso_local global i32 0, align 4
@DBG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"adapter init timed out\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @amb_talk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amb_talk(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_17__, align 8
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %7 = load i32, i32* @DBG_FLOW, align 4
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %9 = call i32 (i32, i8*, ...) @PRINTD(i32 %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.TYPE_16__* %8)
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @bus_addr(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 7
  store i8* %15, i8** %16, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i8* @bus_addr(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 6
  store i8* %22, i8** %23, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @bus_addr(i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 5
  store i8* %29, i8** %30, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i8* @bus_addr(i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 4
  store i8* %36, i8** %37, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @bus_addr(i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 3
  store i8* %43, i8** %44, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i8* @bus_addr(i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 2
  store i8* %50, i8** %51, align 8
  store i8 0, i8* %5, align 1
  br label %52

52:                                               ; preds = %138, %1
  %53 = load i8, i8* %5, align 1
  %54 = zext i8 %53 to i32
  %55 = load i8, i8* @NUM_RX_POOLS, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %141

58:                                               ; preds = %52
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_26__*, %struct.TYPE_26__** %60, align 8
  %62 = load i8, i8* %5, align 1
  %63 = zext i8 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @bus_addr(i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 1
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %69, align 8
  %71 = load i8, i8* %5, align 1
  %72 = zext i8 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %73, i32 0, i32 4
  store i8* %68, i8** %74, align 8
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_26__*, %struct.TYPE_26__** %76, align 8
  %78 = load i8, i8* %5, align 1
  %79 = zext i8 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i8* @bus_addr(i32 %83)
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 1
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %85, align 8
  %87 = load i8, i8* %5, align 1
  %88 = zext i8 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %89, i32 0, i32 3
  store i8* %84, i8** %90, align 8
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_26__*, %struct.TYPE_26__** %92, align 8
  %94 = load i8, i8* %5, align 1
  %95 = zext i8 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i8* @bus_addr(i32 %99)
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 1
  %102 = load %struct.TYPE_25__*, %struct.TYPE_25__** %101, align 8
  %103 = load i8, i8* %5, align 1
  %104 = zext i8 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %105, i32 0, i32 2
  store i8* %100, i8** %106, align 8
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_26__*, %struct.TYPE_26__** %108, align 8
  %110 = load i8, i8* %5, align 1
  %111 = zext i8 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i8* @bus_addr(i32 %115)
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 1
  %118 = load %struct.TYPE_25__*, %struct.TYPE_25__** %117, align 8
  %119 = load i8, i8* %5, align 1
  %120 = zext i8 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %121, i32 0, i32 1
  store i8* %116, i8** %122, align 8
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_26__*, %struct.TYPE_26__** %124, align 8
  %126 = load i8, i8* %5, align 1
  %127 = zext i8 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @cpu_to_be32(i32 %130)
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 1
  %133 = load %struct.TYPE_25__*, %struct.TYPE_25__** %132, align 8
  %134 = load i8, i8* %5, align 1
  %135 = zext i8 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %136, i32 0, i32 0
  store i32 %131, i32* %137, align 8
  br label %138

138:                                              ; preds = %58
  %139 = load i8, i8* %5, align 1
  %140 = add i8 %139, 1
  store i8 %140, i8* %5, align 1
  br label %52

141:                                              ; preds = %52
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %143 = load i32, i32* @amb_mem, align 4
  %144 = load i32, i32* @doorbell, align 4
  %145 = call i32 @offsetof(i32 %143, i32 %144)
  %146 = call i32 @virt_to_bus(%struct.TYPE_17__* %4)
  %147 = call i32 @wr_mem(%struct.TYPE_16__* %142, i32 %145, i32 %146)
  %148 = call i32 @msleep(i32 2200)
  store i64 500, i64* %6, align 8
  br label %149

149:                                              ; preds = %169, %141
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %151 = load i32, i32* @amb_mem, align 4
  %152 = load i32, i32* @doorbell, align 4
  %153 = call i32 @offsetof(i32 %151, i32 %152)
  %154 = call i64 @rd_plain(%struct.TYPE_16__* %150, i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %170

156:                                              ; preds = %149
  %157 = load i64, i64* %6, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = load i64, i64* %6, align 8
  %161 = call i64 @msleep_interruptible(i64 %160)
  store i64 %161, i64* %6, align 8
  br label %169

162:                                              ; preds = %156
  %163 = load i32, i32* @DBG_INIT, align 4
  %164 = load i32, i32* @DBG_ERR, align 4
  %165 = or i32 %163, %164
  %166 = call i32 (i32, i8*, ...) @PRINTD(i32 %165, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %167 = load i32, i32* @ETIMEDOUT, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %2, align 4
  br label %171

169:                                              ; preds = %159
  br label %149

170:                                              ; preds = %149
  store i32 0, i32* %2, align 4
  br label %171

171:                                              ; preds = %170, %162
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local i32 @PRINTD(i32, i8*, ...) #1

declare dso_local i8* @bus_addr(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @wr_mem(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @offsetof(i32, i32) #1

declare dso_local i32 @virt_to_bus(%struct.TYPE_17__*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @rd_plain(%struct.TYPE_16__*, i32) #1

declare dso_local i64 @msleep_interruptible(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
