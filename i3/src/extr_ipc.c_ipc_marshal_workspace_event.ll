; ModuleID = '/home/carl/AnghaBench/i3/src/extr_ipc.c_ipc_marshal_workspace_event.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_ipc.c_ipc_marshal_workspace_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LC_NUMERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"C\00", align 1
@map_open = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"change\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"current\00", align 1
@null = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"old\00", align 1
@map_close = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipc_marshal_workspace_event(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32, i32* @LC_NUMERIC, align 4
  %9 = call i32 @setlocale(i32 %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 (...) @ygenalloc()
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* @map_open, align 4
  %12 = call i32 @y(i32 %11)
  %13 = call i32 @ystr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @ystr(i8* %14)
  %16 = call i32 @ystr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %17 = load i32*, i32** %5, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @null, align 4
  %21 = call i32 @y(i32 %20)
  br label %26

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @dump_node(i32 %23, i32* %24, i32 0)
  br label %26

26:                                               ; preds = %22, %19
  %27 = call i32 @ystr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %28 = load i32*, i32** %6, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @null, align 4
  %32 = call i32 @y(i32 %31)
  br label %37

33:                                               ; preds = %26
  %34 = load i32, i32* %7, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @dump_node(i32 %34, i32* %35, i32 0)
  br label %37

37:                                               ; preds = %33, %30
  %38 = load i32, i32* @map_close, align 4
  %39 = call i32 @y(i32 %38)
  %40 = load i32, i32* @LC_NUMERIC, align 4
  %41 = call i32 @setlocale(i32 %40, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  %42 = load i32, i32* %7, align 4
  ret i32 %42
}

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @ygenalloc(...) #1

declare dso_local i32 @y(i32) #1

declare dso_local i32 @ystr(i8*) #1

declare dso_local i32 @dump_node(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
