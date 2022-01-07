; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_amiflop.c_fd_seek.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_amiflop.c_fd_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i8 }

@unit = common dso_local global %struct.TYPE_5__* null, align 8
@ciab = common dso_local global %struct.TYPE_6__ zeroinitializer, align 1
@DSKSIDE = common dso_local global i8 0, align 1
@DSKDIREC = common dso_local global i8 0, align 1
@DSKSTEP = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @fd_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fd_seek(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = and i32 %8, 3
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @get_fdc(i32 %10)
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** @unit, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = call i32 (...) @rel_fdc()
  store i32 1, i32* %3, align 4
  br label %168

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @fd_motor_on(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = call i32 (...) @rel_fdc()
  store i32 0, i32* %3, align 4
  br label %168

28:                                               ; preds = %22
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** @unit, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %28
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @fd_calibrate(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = call i32 (...) @rel_fdc()
  store i32 0, i32* %3, align 4
  br label %168

42:                                               ; preds = %36, %28
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @fd_select(i32 %43)
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** @unit, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sdiv i32 %50, 2
  %52 = load i32, i32* %5, align 4
  %53 = sdiv i32 %52, 2
  %54 = sub nsw i32 %51, %53
  store i32 %54, i32* %7, align 4
  %55 = load i8, i8* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ciab, i32 0, i32 0), align 1
  store i8 %55, i8* %6, align 1
  %56 = load i8, i8* @DSKSIDE, align 1
  %57 = zext i8 %56 to i32
  %58 = load i8, i8* @DSKDIREC, align 1
  %59 = zext i8 %58 to i32
  %60 = or i32 %57, %59
  %61 = load i8, i8* %6, align 1
  %62 = zext i8 %61 to i32
  %63 = or i32 %62, %60
  %64 = trunc i32 %63 to i8
  store i8 %64, i8* %6, align 1
  %65 = load i32, i32* %5, align 4
  %66 = srem i32 %65, 2
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %42
  %69 = load i8, i8* @DSKSIDE, align 1
  %70 = zext i8 %69 to i32
  %71 = xor i32 %70, -1
  %72 = load i8, i8* %6, align 1
  %73 = zext i8 %72 to i32
  %74 = and i32 %73, %71
  %75 = trunc i32 %74 to i8
  store i8 %75, i8* %6, align 1
  br label %76

76:                                               ; preds = %68, %42
  %77 = load i32, i32* %7, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %76
  %80 = load i32, i32* %7, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %7, align 4
  %82 = load i8, i8* @DSKDIREC, align 1
  %83 = zext i8 %82 to i32
  %84 = xor i32 %83, -1
  %85 = load i8, i8* %6, align 1
  %86 = zext i8 %85 to i32
  %87 = and i32 %86, %84
  %88 = trunc i32 %87 to i8
  store i8 %88, i8* %6, align 1
  br label %89

89:                                               ; preds = %79, %76
  %90 = load i8, i8* %6, align 1
  store i8 %90, i8* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ciab, i32 0, i32 0), align 1
  %91 = load i32, i32* %5, align 4
  %92 = srem i32 %91, 2
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** @unit, align 8
  %94 = load i32, i32* %4, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = srem i32 %98, 2
  %100 = icmp ne i32 %92, %99
  br i1 %100, label %101, label %111

101:                                              ; preds = %89
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** @unit, align 8
  %103 = load i32, i32* %4, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @ms_delay(i32 %109)
  br label %111

111:                                              ; preds = %101, %89
  %112 = load i32, i32* %5, align 4
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** @unit, align 8
  %114 = load i32, i32* %4, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  store i32 %112, i32* %117, align 8
  %118 = load i32, i32* %7, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %111
  %121 = call i32 (...) @rel_fdc()
  %122 = load i32, i32* %4, align 4
  %123 = call i32 @fd_deselect(i32 %122)
  store i32 1, i32* %3, align 4
  br label %168

124:                                              ; preds = %111
  br label %125

125:                                              ; preds = %151, %124
  %126 = load i8, i8* @DSKSTEP, align 1
  %127 = zext i8 %126 to i32
  %128 = xor i32 %127, -1
  %129 = load i8, i8* %6, align 1
  %130 = zext i8 %129 to i32
  %131 = and i32 %130, %128
  %132 = trunc i32 %131 to i8
  store i8 %132, i8* %6, align 1
  %133 = load i8, i8* %6, align 1
  store i8 %133, i8* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ciab, i32 0, i32 0), align 1
  %134 = load i8, i8* @DSKSTEP, align 1
  %135 = zext i8 %134 to i32
  %136 = load i8, i8* %6, align 1
  %137 = zext i8 %136 to i32
  %138 = or i32 %137, %135
  %139 = trunc i32 %138 to i8
  store i8 %139, i8* %6, align 1
  %140 = call i32 @udelay(i32 1)
  %141 = load i8, i8* %6, align 1
  store i8 %141, i8* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ciab, i32 0, i32 0), align 1
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** @unit, align 8
  %143 = load i32, i32* %4, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @ms_delay(i32 %149)
  br label %151

151:                                              ; preds = %125
  %152 = load i32, i32* %7, align 4
  %153 = add nsw i32 %152, -1
  store i32 %153, i32* %7, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %125, label %155

155:                                              ; preds = %151
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** @unit, align 8
  %157 = load i32, i32* %4, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @ms_delay(i32 %163)
  %165 = call i32 (...) @rel_fdc()
  %166 = load i32, i32* %4, align 4
  %167 = call i32 @fd_deselect(i32 %166)
  store i32 1, i32* %3, align 4
  br label %168

168:                                              ; preds = %155, %120, %40, %26, %20
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local i32 @get_fdc(i32) #1

declare dso_local i32 @rel_fdc(...) #1

declare dso_local i32 @fd_motor_on(i32) #1

declare dso_local i32 @fd_calibrate(i32) #1

declare dso_local i32 @fd_select(i32) #1

declare dso_local i32 @ms_delay(i32) #1

declare dso_local i32 @fd_deselect(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
