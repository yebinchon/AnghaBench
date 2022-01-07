; ModuleID = '/home/carl/AnghaBench/git/extr_submodule.c_prepare_submodule_summary.c'
source_filename = "/home/carl/AnghaBench/git/extr_submodule.c_prepare_submodule_summary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i32, i32 }
%struct.commit = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.commit_list = type { %struct.TYPE_3__*, %struct.commit_list* }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }

@the_repository = common dso_local global i32 0, align 4
@SYMMETRIC_LEFT = common dso_local global i32 0, align 4
@UNINTERESTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rev_info*, i8*, %struct.commit*, %struct.commit*, %struct.commit_list*)* @prepare_submodule_summary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_submodule_summary(%struct.rev_info* %0, i8* %1, %struct.commit* %2, %struct.commit* %3, %struct.commit_list* %4) #0 {
  %6 = alloca %struct.rev_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.commit*, align 8
  %9 = alloca %struct.commit*, align 8
  %10 = alloca %struct.commit_list*, align 8
  %11 = alloca %struct.commit_list*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.commit* %2, %struct.commit** %8, align 8
  store %struct.commit* %3, %struct.commit** %9, align 8
  store %struct.commit_list* %4, %struct.commit_list** %10, align 8
  %12 = load i32, i32* @the_repository, align 4
  %13 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %14 = call i32 @repo_init_revisions(i32 %12, %struct.rev_info* %13, i32* null)
  %15 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %16 = call i32 @setup_revisions(i32 0, i32* null, %struct.rev_info* %15, i32* null)
  %17 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %18 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  %19 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %20 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %19, i32 0, i32 1
  store i32 1, i32* %20, align 4
  %21 = load i32, i32* @SYMMETRIC_LEFT, align 4
  %22 = load %struct.commit*, %struct.commit** %8, align 8
  %23 = getelementptr inbounds %struct.commit, %struct.commit* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %21
  store i32 %26, i32* %24, align 4
  %27 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %28 = load %struct.commit*, %struct.commit** %8, align 8
  %29 = getelementptr inbounds %struct.commit, %struct.commit* %28, i32 0, i32 0
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @add_pending_object(%struct.rev_info* %27, %struct.TYPE_4__* %29, i8* %30)
  %32 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %33 = load %struct.commit*, %struct.commit** %9, align 8
  %34 = getelementptr inbounds %struct.commit, %struct.commit* %33, i32 0, i32 0
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @add_pending_object(%struct.rev_info* %32, %struct.TYPE_4__* %34, i8* %35)
  %37 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  store %struct.commit_list* %37, %struct.commit_list** %11, align 8
  br label %38

38:                                               ; preds = %62, %5
  %39 = load %struct.commit_list*, %struct.commit_list** %11, align 8
  %40 = icmp ne %struct.commit_list* %39, null
  br i1 %40, label %41, label %66

41:                                               ; preds = %38
  %42 = load i32, i32* @UNINTERESTING, align 4
  %43 = load %struct.commit_list*, %struct.commit_list** %11, align 8
  %44 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %42
  store i32 %49, i32* %47, align 4
  %50 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %51 = load %struct.commit_list*, %struct.commit_list** %11, align 8
  %52 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load %struct.commit_list*, %struct.commit_list** %11, align 8
  %56 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = call i8* @oid_to_hex(i32* %59)
  %61 = call i32 @add_pending_object(%struct.rev_info* %50, %struct.TYPE_4__* %54, i8* %60)
  br label %62

62:                                               ; preds = %41
  %63 = load %struct.commit_list*, %struct.commit_list** %11, align 8
  %64 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %63, i32 0, i32 1
  %65 = load %struct.commit_list*, %struct.commit_list** %64, align 8
  store %struct.commit_list* %65, %struct.commit_list** %11, align 8
  br label %38

66:                                               ; preds = %38
  %67 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %68 = call i32 @prepare_revision_walk(%struct.rev_info* %67)
  ret i32 %68
}

declare dso_local i32 @repo_init_revisions(i32, %struct.rev_info*, i32*) #1

declare dso_local i32 @setup_revisions(i32, i32*, %struct.rev_info*, i32*) #1

declare dso_local i32 @add_pending_object(%struct.rev_info*, %struct.TYPE_4__*, i8*) #1

declare dso_local i8* @oid_to_hex(i32*) #1

declare dso_local i32 @prepare_revision_walk(%struct.rev_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
