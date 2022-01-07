; ModuleID = '/home/carl/AnghaBench/i3/src/extr_ipc.c_dump_rect.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_ipc.c_dump_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@map_open = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"x\00", align 1
@integer = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@map_close = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i64, i64)* @dump_rect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_rect(i32 %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_3__, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = bitcast %struct.TYPE_3__* %5 to { i64, i64 }*
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 0
  store i64 %2, i64* %9, align 4
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 1
  store i64 %3, i64* %10, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i32 @ystr(i8* %11)
  %13 = load i32, i32* @map_open, align 4
  %14 = call i32 (i32, ...) @y(i32 %13)
  %15 = call i32 @ystr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @integer, align 4
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i32, ...) @y(i32 %16, i32 %18)
  %20 = call i32 @ystr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @integer, align 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i32, ...) @y(i32 %21, i32 %23)
  %25 = call i32 @ystr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i32, i32* @integer, align 4
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i32, ...) @y(i32 %26, i32 %28)
  %30 = call i32 @ystr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %31 = load i32, i32* @integer, align 4
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i32, ...) @y(i32 %31, i32 %33)
  %35 = load i32, i32* @map_close, align 4
  %36 = call i32 (i32, ...) @y(i32 %35)
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
