; ModuleID = '/home/carl/AnghaBench/git/t/helper/extr_test-revision-walking.c_run_revision_walk.c'
source_filename = "/home/carl/AnghaBench/git/t/helper/extr_test-revision-walking.c_run_revision_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i32 }
%struct.commit = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"--all\00", align 1
@__const.run_revision_walk.argv = private unnamed_addr constant [3 x i8*] [i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* null], align 16
@the_repository = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"revision walk setup failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @run_revision_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_revision_walk() #0 {
  %1 = alloca %struct.rev_info, align 4
  %2 = alloca %struct.commit*, align 8
  %3 = alloca [3 x i8*], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = bitcast [3 x i8*]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([3 x i8*]* @__const.run_revision_walk.argv to i8*), i64 24, i1 false)
  %7 = getelementptr inbounds [3 x i8*], [3 x i8*]* %3, i64 0, i64 0
  %8 = call i32 @ARRAY_SIZE(i8** %7)
  %9 = sub nsw i32 %8, 1
  store i32 %9, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %10 = load i32, i32* @the_repository, align 4
  %11 = call i32 @repo_init_revisions(i32 %10, %struct.rev_info* %1, i32* null)
  %12 = load i32, i32* %4, align 4
  %13 = getelementptr inbounds [3 x i8*], [3 x i8*]* %3, i64 0, i64 0
  %14 = call i32 @setup_revisions(i32 %12, i8** %13, %struct.rev_info* %1, i32* null)
  %15 = call i64 @prepare_revision_walk(%struct.rev_info* %1)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %0
  %18 = call i32 @die(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %0
  br label %20

20:                                               ; preds = %23, %19
  %21 = call %struct.commit* @get_revision(%struct.rev_info* %1)
  store %struct.commit* %21, %struct.commit** %2, align 8
  %22 = icmp ne %struct.commit* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load %struct.commit*, %struct.commit** %2, align 8
  %25 = call i32 @print_commit(%struct.commit* %24)
  store i32 1, i32* %5, align 4
  br label %20

26:                                               ; preds = %20
  %27 = call i32 (...) @reset_revision_walk()
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #2

declare dso_local i32 @repo_init_revisions(i32, %struct.rev_info*, i32*) #2

declare dso_local i32 @setup_revisions(i32, i8**, %struct.rev_info*, i32*) #2

declare dso_local i64 @prepare_revision_walk(%struct.rev_info*) #2

declare dso_local i32 @die(i8*) #2

declare dso_local %struct.commit* @get_revision(%struct.rev_info*) #2

declare dso_local i32 @print_commit(%struct.commit*) #2

declare dso_local i32 @reset_revision_walk(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
