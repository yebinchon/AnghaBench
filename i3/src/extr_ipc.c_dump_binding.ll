; ModuleID = '/home/carl/AnghaBench/i3/src/extr_ipc.c_dump_binding.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_ipc.c_dump_binding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8*, i8*, i32 }

@map_open = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"input_code\00", align 1
@integer = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"input_type\00", align 1
@B_KEYBOARD = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"keyboard\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"mouse\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"symbol\00", align 1
@null = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"command\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"mods\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"event_state_mask\00", align 1
@map_close = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_4__*)* @dump_binding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_binding(i32 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %5 = load i32, i32* @map_open, align 4
  %6 = call i32 (i32, ...) @y(i32 %5)
  %7 = call i32 @ystr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @integer, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i32 (i32, ...) @y(i32 %8, i32 %11)
  %13 = call i32 @ystr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @B_KEYBOARD, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %21 = call i32 @ystr(i8* %20)
  %22 = call i32 @ystr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i32, i32* @null, align 4
  %29 = call i32 (i32, ...) @y(i32 %28)
  br label %35

30:                                               ; preds = %2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @ystr(i8* %33)
  br label %35

35:                                               ; preds = %30, %27
  %36 = call i32 @ystr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @ystr(i8* %39)
  %41 = call i32 @ystr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %42 = load i32, i32* %3, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %44 = call i32 @dump_event_state_mask(i32 %42, %struct.TYPE_4__* %43)
  %45 = call i32 @ystr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %46 = load i32, i32* %3, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %48 = call i32 @dump_event_state_mask(i32 %46, %struct.TYPE_4__* %47)
  %49 = load i32, i32* @map_close, align 4
  %50 = call i32 (i32, ...) @y(i32 %49)
  ret void
}

declare dso_local i32 @y(i32, ...) #1

declare dso_local i32 @ystr(i8*) #1

declare dso_local i32 @dump_event_state_mask(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
