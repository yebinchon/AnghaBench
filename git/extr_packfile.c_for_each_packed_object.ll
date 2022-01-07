; ModuleID = '/home/carl/AnghaBench/git/extr_packfile.c_for_each_packed_object.c'
source_filename = "/home/carl/AnghaBench/git/extr_packfile.c_for_each_packed_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packed_git = type { i32, i32, %struct.packed_git* }

@the_repository = common dso_local global i32 0, align 4
@FOR_EACH_OBJECT_LOCAL_ONLY = common dso_local global i32 0, align 4
@FOR_EACH_OBJECT_PROMISOR_ONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @for_each_packed_object(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.packed_git*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* @the_repository, align 4
  %11 = call i32 @prepare_packed_git(i32 %10)
  %12 = load i32, i32* @the_repository, align 4
  %13 = call %struct.packed_git* @get_all_packs(i32 %12)
  store %struct.packed_git* %13, %struct.packed_git** %7, align 8
  br label %14

14:                                               ; preds = %54, %3
  %15 = load %struct.packed_git*, %struct.packed_git** %7, align 8
  %16 = icmp ne %struct.packed_git* %15, null
  br i1 %16, label %17, label %58

17:                                               ; preds = %14
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @FOR_EACH_OBJECT_LOCAL_ONLY, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.packed_git*, %struct.packed_git** %7, align 8
  %24 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %54

28:                                               ; preds = %22, %17
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @FOR_EACH_OBJECT_PROMISOR_ONLY, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.packed_git*, %struct.packed_git** %7, align 8
  %35 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  br label %54

39:                                               ; preds = %33, %28
  %40 = load %struct.packed_git*, %struct.packed_git** %7, align 8
  %41 = call i64 @open_pack_index(%struct.packed_git* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 1, i32* %9, align 4
  br label %54

44:                                               ; preds = %39
  %45 = load %struct.packed_git*, %struct.packed_git** %7, align 8
  %46 = load i32, i32* %4, align 4
  %47 = load i8*, i8** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @for_each_object_in_pack(%struct.packed_git* %45, i32 %46, i8* %47, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %58

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53, %43, %38, %27
  %55 = load %struct.packed_git*, %struct.packed_git** %7, align 8
  %56 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %55, i32 0, i32 2
  %57 = load %struct.packed_git*, %struct.packed_git** %56, align 8
  store %struct.packed_git* %57, %struct.packed_git** %7, align 8
  br label %14

58:                                               ; preds = %52, %14
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32, i32* %8, align 4
  br label %65

63:                                               ; preds = %58
  %64 = load i32, i32* %9, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  ret i32 %66
}

declare dso_local i32 @prepare_packed_git(i32) #1

declare dso_local %struct.packed_git* @get_all_packs(i32) #1

declare dso_local i64 @open_pack_index(%struct.packed_git*) #1

declare dso_local i32 @for_each_object_in_pack(%struct.packed_git*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
