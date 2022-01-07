; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_write_basic_state.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_write_basic_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.replay_opts = type { i8*, i64, i64, i8*, i64, i64, i64 }
%struct.commit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"GIT_QUIET\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@RERERE_AUTOUPDATE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"--rerere-autoupdate\0A\00", align 1
@RERERE_NOAUTOUPDATE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"--no-rerere-autoupdate\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"-S%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"--signoff\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_basic_state(%struct.replay_opts* %0, i8* %1, %struct.commit* %2, i8* %3) #0 {
  %5 = alloca %struct.replay_opts*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.commit*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.replay_opts* %0, %struct.replay_opts** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.commit* %2, %struct.commit** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i8* %10, i8** %9, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = call i32 (...) @rebase_path_head_name()
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 (i32, i8*, ...) @write_file(i32 %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %15)
  br label %17

17:                                               ; preds = %13, %4
  %18 = load %struct.commit*, %struct.commit** %7, align 8
  %19 = icmp ne %struct.commit* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = call i32 (...) @rebase_path_onto()
  %22 = load %struct.commit*, %struct.commit** %7, align 8
  %23 = getelementptr inbounds %struct.commit, %struct.commit* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i8* @oid_to_hex(i32* %24)
  %26 = call i32 (i32, i8*, ...) @write_file(i32 %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  br label %27

27:                                               ; preds = %20, %17
  %28 = load i8*, i8** %8, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = call i32 (...) @rebase_path_orig_head()
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 (i32, i8*, ...) @write_file(i32 %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %30, %27
  %35 = load i8*, i8** %9, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = call i32 (...) @rebase_path_quiet()
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 (i32, i8*, ...) @write_file(i32 %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  br label %41

41:                                               ; preds = %37, %34
  %42 = load %struct.replay_opts*, %struct.replay_opts** %5, align 8
  %43 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %42, i32 0, i32 6
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = call i32 (...) @rebase_path_verbose()
  %48 = call i32 (i32, i8*, ...) @write_file(i32 %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %41
  %50 = load %struct.replay_opts*, %struct.replay_opts** %5, align 8
  %51 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = call i32 (...) @rebase_path_strategy()
  %56 = load %struct.replay_opts*, %struct.replay_opts** %5, align 8
  %57 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 (i32, i8*, ...) @write_file(i32 %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %54, %49
  %61 = load %struct.replay_opts*, %struct.replay_opts** %5, align 8
  %62 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load %struct.replay_opts*, %struct.replay_opts** %5, align 8
  %67 = call i32 @write_strategy_opts(%struct.replay_opts* %66)
  br label %68

68:                                               ; preds = %65, %60
  %69 = load %struct.replay_opts*, %struct.replay_opts** %5, align 8
  %70 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @RERERE_AUTOUPDATE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = call i32 (...) @rebase_path_allow_rerere_autoupdate()
  %76 = call i32 (i32, i8*, ...) @write_file(i32 %75, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %87

77:                                               ; preds = %68
  %78 = load %struct.replay_opts*, %struct.replay_opts** %5, align 8
  %79 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @RERERE_NOAUTOUPDATE, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = call i32 (...) @rebase_path_allow_rerere_autoupdate()
  %85 = call i32 (i32, i8*, ...) @write_file(i32 %84, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %86

86:                                               ; preds = %83, %77
  br label %87

87:                                               ; preds = %86, %74
  %88 = load %struct.replay_opts*, %struct.replay_opts** %5, align 8
  %89 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %88, i32 0, i32 3
  %90 = load i8*, i8** %89, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = call i32 (...) @rebase_path_gpg_sign_opt()
  %94 = load %struct.replay_opts*, %struct.replay_opts** %5, align 8
  %95 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %94, i32 0, i32 3
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 (i32, i8*, ...) @write_file(i32 %93, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %96)
  br label %98

98:                                               ; preds = %92, %87
  %99 = load %struct.replay_opts*, %struct.replay_opts** %5, align 8
  %100 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %99, i32 0, i32 5
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = call i32 (...) @rebase_path_signoff()
  %105 = call i32 (i32, i8*, ...) @write_file(i32 %104, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  br label %106

106:                                              ; preds = %103, %98
  %107 = load %struct.replay_opts*, %struct.replay_opts** %5, align 8
  %108 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = call i32 (...) @rebase_path_reschedule_failed_exec()
  %113 = call i32 (i32, i8*, ...) @write_file(i32 %112, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  br label %114

114:                                              ; preds = %111, %106
  ret i32 0
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @write_file(i32, i8*, ...) #1

declare dso_local i32 @rebase_path_head_name(...) #1

declare dso_local i32 @rebase_path_onto(...) #1

declare dso_local i8* @oid_to_hex(i32*) #1

declare dso_local i32 @rebase_path_orig_head(...) #1

declare dso_local i32 @rebase_path_quiet(...) #1

declare dso_local i32 @rebase_path_verbose(...) #1

declare dso_local i32 @rebase_path_strategy(...) #1

declare dso_local i32 @write_strategy_opts(%struct.replay_opts*) #1

declare dso_local i32 @rebase_path_allow_rerere_autoupdate(...) #1

declare dso_local i32 @rebase_path_gpg_sign_opt(...) #1

declare dso_local i32 @rebase_path_signoff(...) #1

declare dso_local i32 @rebase_path_reschedule_failed_exec(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
