; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cmd.c_Cmd_List_f.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cmd.c_Cmd_List_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.TYPE_3__* }

@cmd_functions = common dso_local global %struct.TYPE_3__* null, align 8
@qfalse = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%i commands\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Cmd_List_f() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = call i32 (...) @Cmd_Argc()
  %5 = icmp sgt i32 %4, 1
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i8* @Cmd_Argv(i32 1)
  store i8* %7, i8** %3, align 8
  br label %9

8:                                                ; preds = %0
  store i8* null, i8** %3, align 8
  br label %9

9:                                                ; preds = %8, %6
  store i32 0, i32* %2, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cmd_functions, align 8
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %1, align 8
  br label %11

11:                                               ; preds = %33, %9
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %13 = icmp ne %struct.TYPE_3__* %12, null
  br i1 %13, label %14, label %37

14:                                               ; preds = %11
  %15 = load i8*, i8** %3, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %14
  %18 = load i8*, i8** %3, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @qfalse, align 4
  %23 = call i32 @Com_Filter(i8* %18, i32 %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  br label %33

26:                                               ; preds = %17, %14
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @Com_Printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %2, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %26, %25
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  store %struct.TYPE_3__* %36, %struct.TYPE_3__** %1, align 8
  br label %11

37:                                               ; preds = %11
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @Com_Printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  ret void
}

declare dso_local i32 @Cmd_Argc(...) #1

declare dso_local i8* @Cmd_Argv(i32) #1

declare dso_local i32 @Com_Filter(i8*, i32, i32) #1

declare dso_local i32 @Com_Printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
