; ModuleID = '/home/carl/AnghaBench/i3/src/extr_ipc.c_dump_gaps.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_ipc.c_dump_gaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@map_open = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"inner\00", align 1
@integer = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"outer\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"top\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"bottom\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@map_close = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, %struct.TYPE_3__*)* @dump_gaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_gaps(i32 %0, i8* %1, %struct.TYPE_3__* byval(%struct.TYPE_3__) align 8 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = call i32 @ystr(i8* %6)
  %8 = load i32, i32* @map_open, align 4
  %9 = call i32 (i32, ...) @y(i32 %8)
  %10 = call i32 @ystr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @integer, align 4
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = call i32 (i32, ...) @y(i32 %11, i32 %13)
  %15 = call i32 @ystr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32, i32* @integer, align 4
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i32, ...) @y(i32 %16, i32 %18)
  %20 = call i32 @ystr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %21 = load i32, i32* @integer, align 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i32, ...) @y(i32 %21, i32 %23)
  %25 = call i32 @ystr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %26 = load i32, i32* @integer, align 4
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (i32, ...) @y(i32 %26, i32 %28)
  %30 = call i32 @ystr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %31 = load i32, i32* @integer, align 4
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i32, ...) @y(i32 %31, i32 %33)
  %35 = call i32 @ystr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %36 = load i32, i32* @integer, align 4
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i32, ...) @y(i32 %36, i32 %38)
  %40 = load i32, i32* @map_close, align 4
  %41 = call i32 (i32, ...) @y(i32 %40)
  ret void
}

declare dso_local i32 @ystr(i8*) #1

declare dso_local i32 @y(i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
