; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_keys.c_Key_Bind_f.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_keys.c_Key_Bind_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64* }

@.str = private unnamed_addr constant [50 x i8] c"bind <key> [command] : attach a command to a key\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"\22%s\22 isn't a valid key\0A\00", align 1
@keys = common dso_local global %struct.TYPE_2__* null, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"\22%s\22 = \22%s\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"\22%s\22 is not bound\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Key_Bind_f() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [1024 x i8], align 16
  %5 = call i32 (...) @Cmd_Argc()
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp slt i32 %6, 2
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %80

10:                                               ; preds = %0
  %11 = call i8* @Cmd_Argv(i32 1)
  %12 = call i32 @Key_StringToKeynum(i8* %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = call i8* @Cmd_Argv(i32 1)
  %17 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  br label %80

18:                                               ; preds = %10
  %19 = load i32, i32* %2, align 4
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %54

21:                                               ; preds = %18
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @keys, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = icmp ne i64* %27, null
  br i1 %28, label %29, label %49

29:                                               ; preds = %21
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @keys, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %29
  %40 = load i32, i32* %3, align 4
  %41 = call i8* @Key_KeynumToString(i32 %40)
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @keys, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %41, i64* %47)
  br label %53

49:                                               ; preds = %29, %21
  %50 = load i32, i32* %3, align 4
  %51 = call i8* @Key_KeynumToString(i32 %50)
  %52 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %49, %39
  br label %80

54:                                               ; preds = %18
  %55 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  store i8 0, i8* %55, align 16
  store i32 2, i32* %1, align 4
  br label %56

56:                                               ; preds = %73, %54
  %57 = load i32, i32* %1, align 4
  %58 = load i32, i32* %2, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %56
  %61 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %62 = load i32, i32* %1, align 4
  %63 = call i8* @Cmd_Argv(i32 %62)
  %64 = call i32 @strcat(i8* %61, i8* %63)
  %65 = load i32, i32* %1, align 4
  %66 = load i32, i32* %2, align 4
  %67 = sub nsw i32 %66, 1
  %68 = icmp ne i32 %65, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %60
  %70 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %71 = call i32 @strcat(i8* %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %60
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %1, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %1, align 4
  br label %56

76:                                               ; preds = %56
  %77 = load i32, i32* %3, align 4
  %78 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %79 = call i32 @Key_SetBinding(i32 %77, i8* %78)
  br label %80

80:                                               ; preds = %76, %53, %15, %8
  ret void
}

declare dso_local i32 @Cmd_Argc(...) #1

declare dso_local i32 @Com_Printf(i8*, ...) #1

declare dso_local i32 @Key_StringToKeynum(i8*) #1

declare dso_local i8* @Cmd_Argv(i32) #1

declare dso_local i8* @Key_KeynumToString(i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @Key_SetBinding(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
