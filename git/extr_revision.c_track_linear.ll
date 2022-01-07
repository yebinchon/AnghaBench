; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_track_linear.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_track_linear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i32, %struct.commit_list*, i64, i64 }
%struct.commit_list = type { %struct.TYPE_5__*, %struct.commit_list* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.commit = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@TRACK_LINEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rev_info*, %struct.commit*)* @track_linear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @track_linear(%struct.rev_info* %0, %struct.commit* %1) #0 {
  %3 = alloca %struct.rev_info*, align 8
  %4 = alloca %struct.commit*, align 8
  %5 = alloca %struct.commit_list*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %3, align 8
  store %struct.commit* %1, %struct.commit** %4, align 8
  %6 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %7 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %12 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %14 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %13, i32 0, i32 3
  store i64 0, i64* %14, align 8
  br label %50

15:                                               ; preds = %2
  %16 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %17 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %16, i32 0, i32 1
  %18 = load %struct.commit_list*, %struct.commit_list** %17, align 8
  store %struct.commit_list* %18, %struct.commit_list** %5, align 8
  br label %19

19:                                               ; preds = %40, %15
  %20 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %21 = icmp ne %struct.commit_list* %20, null
  br i1 %21, label %22, label %44

22:                                               ; preds = %19
  %23 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %24 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = icmp eq %struct.TYPE_5__* %25, null
  br i1 %26, label %38, label %27

27:                                               ; preds = %22
  %28 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %29 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.commit*, %struct.commit** %4, align 8
  %34 = getelementptr inbounds %struct.commit, %struct.commit* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = call i64 @oideq(i32* %32, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %27, %22
  br label %44

39:                                               ; preds = %27
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %42 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %41, i32 0, i32 1
  %43 = load %struct.commit_list*, %struct.commit_list** %42, align 8
  store %struct.commit_list* %43, %struct.commit_list** %5, align 8
  br label %19

44:                                               ; preds = %38, %19
  %45 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %46 = icmp ne %struct.commit_list* %45, null
  %47 = zext i1 %46 to i32
  %48 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %49 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %44, %10
  %51 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %52 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %50
  %56 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %57 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load i32, i32* @TRACK_LINEAR, align 4
  %62 = load %struct.commit*, %struct.commit** %4, align 8
  %63 = getelementptr inbounds %struct.commit, %struct.commit* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %61
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %60, %55
  br label %68

68:                                               ; preds = %67, %50
  %69 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %70 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %69, i32 0, i32 1
  %71 = load %struct.commit_list*, %struct.commit_list** %70, align 8
  %72 = call i32 @free_commit_list(%struct.commit_list* %71)
  %73 = load %struct.commit*, %struct.commit** %4, align 8
  %74 = getelementptr inbounds %struct.commit, %struct.commit* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call %struct.commit_list* @copy_commit_list(i32 %75)
  %77 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %78 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %77, i32 0, i32 1
  store %struct.commit_list* %76, %struct.commit_list** %78, align 8
  ret void
}

declare dso_local i64 @oideq(i32*, i32*) #1

declare dso_local i32 @free_commit_list(%struct.commit_list*) #1

declare dso_local %struct.commit_list* @copy_commit_list(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
