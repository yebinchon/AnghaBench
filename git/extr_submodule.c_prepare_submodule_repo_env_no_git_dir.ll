; ModuleID = '/home/carl/AnghaBench/git/extr_submodule.c_prepare_submodule_repo_env_no_git_dir.c'
source_filename = "/home/carl/AnghaBench/git/extr_submodule.c_prepare_submodule_repo_env_no_git_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argv_array = type { i32 }

@local_repo_env = common dso_local global i8** null, align 8
@CONFIG_DATA_ENVIRONMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.argv_array*)* @prepare_submodule_repo_env_no_git_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_submodule_repo_env_no_git_dir(%struct.argv_array* %0) #0 {
  %2 = alloca %struct.argv_array*, align 8
  %3 = alloca i8**, align 8
  store %struct.argv_array* %0, %struct.argv_array** %2, align 8
  %4 = load i8**, i8*** @local_repo_env, align 8
  store i8** %4, i8*** %3, align 8
  br label %5

5:                                                ; preds = %21, %1
  %6 = load i8**, i8*** %3, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %24

9:                                                ; preds = %5
  %10 = load i8**, i8*** %3, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = load i32, i32* @CONFIG_DATA_ENVIRONMENT, align 4
  %13 = call i64 @strcmp(i8* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %9
  %16 = load %struct.argv_array*, %struct.argv_array** %2, align 8
  %17 = load i8**, i8*** %3, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @argv_array_push(%struct.argv_array* %16, i8* %18)
  br label %20

20:                                               ; preds = %15, %9
  br label %21

21:                                               ; preds = %20
  %22 = load i8**, i8*** %3, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i32 1
  store i8** %23, i8*** %3, align 8
  br label %5

24:                                               ; preds = %5
  ret void
}

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @argv_array_push(%struct.argv_array*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
