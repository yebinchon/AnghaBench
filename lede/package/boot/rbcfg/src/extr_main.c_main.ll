; ModuleID = '/home/carl/AnghaBench/lede/package/boot/rbcfg/src/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/lede/package/boot/rbcfg/src/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbcfg_command = type { i32, i32 (i32, i8**)*, i32 }

@rbcfg_name = common dso_local global i8* null, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@rbcfg_commands = common dso_local global %struct.rbcfg_command* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"unknown command '%s'\0A\00", align 1
@CMD_FLAG_USES_CFG = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.rbcfg_command*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.rbcfg_command* null, %struct.rbcfg_command** %6, align 8
  %9 = load i8**, i8*** %5, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** @rbcfg_name, align 8
  %12 = call i32 (...) @fixup_rbcfg_envs()
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = call i32 (...) @usage()
  %17 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %17, i32* %3, align 4
  br label %96

18:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %42, %18
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.rbcfg_command*, %struct.rbcfg_command** @rbcfg_commands, align 8
  %22 = call i32 @ARRAY_SIZE(%struct.rbcfg_command* %21)
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %45

24:                                               ; preds = %19
  %25 = load %struct.rbcfg_command*, %struct.rbcfg_command** @rbcfg_commands, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.rbcfg_command, %struct.rbcfg_command* %25, i64 %27
  %29 = getelementptr inbounds %struct.rbcfg_command, %struct.rbcfg_command* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 1
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @strcmp(i32 %30, i8* %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %24
  %37 = load %struct.rbcfg_command*, %struct.rbcfg_command** @rbcfg_commands, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.rbcfg_command, %struct.rbcfg_command* %37, i64 %39
  store %struct.rbcfg_command* %40, %struct.rbcfg_command** %6, align 8
  br label %45

41:                                               ; preds = %24
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %19

45:                                               ; preds = %36, %19
  %46 = load %struct.rbcfg_command*, %struct.rbcfg_command** %6, align 8
  %47 = icmp eq %struct.rbcfg_command* %46, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load i32, i32* @stderr, align 4
  %50 = load i8**, i8*** %5, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 1
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @fprintf(i32 %49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %52)
  %54 = call i32 (...) @usage()
  %55 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %55, i32* %3, align 4
  br label %96

56:                                               ; preds = %45
  %57 = load i32, i32* %4, align 4
  %58 = sub nsw i32 %57, 2
  store i32 %58, i32* %4, align 4
  %59 = load i8**, i8*** %5, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 2
  store i8** %60, i8*** %5, align 8
  %61 = load %struct.rbcfg_command*, %struct.rbcfg_command** %6, align 8
  %62 = getelementptr inbounds %struct.rbcfg_command, %struct.rbcfg_command* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @CMD_FLAG_USES_CFG, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %56
  %68 = call i32 (...) @rbcfg_open()
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %72, i32* %3, align 4
  br label %96

73:                                               ; preds = %67
  br label %74

74:                                               ; preds = %73, %56
  %75 = load %struct.rbcfg_command*, %struct.rbcfg_command** %6, align 8
  %76 = getelementptr inbounds %struct.rbcfg_command, %struct.rbcfg_command* %75, i32 0, i32 1
  %77 = load i32 (i32, i8**)*, i32 (i32, i8**)** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = load i8**, i8*** %5, align 8
  %80 = call i32 %77(i32 %78, i8** %79)
  store i32 %80, i32* %7, align 4
  %81 = load %struct.rbcfg_command*, %struct.rbcfg_command** %6, align 8
  %82 = getelementptr inbounds %struct.rbcfg_command, %struct.rbcfg_command* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @CMD_FLAG_USES_CFG, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %74
  %88 = call i32 (...) @rbcfg_close()
  br label %89

89:                                               ; preds = %87, %74
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %93, i32* %3, align 4
  br label %96

94:                                               ; preds = %89
  %95 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %94, %92, %71, %48, %15
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @fixup_rbcfg_envs(...) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.rbcfg_command*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @rbcfg_open(...) #1

declare dso_local i32 @rbcfg_close(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
