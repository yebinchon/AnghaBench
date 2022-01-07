; ModuleID = '/home/carl/AnghaBench/git/extr_packfile.c_for_each_object_in_pack.c'
source_filename = "/home/carl/AnghaBench/git/extr_packfile.c_for_each_object_in_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packed_git = type { i64, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.object_id = type { i32 }

@FOR_EACH_OBJECT_PACK_ORDER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"unable to get sha1 of object %u in %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @for_each_object_in_pack(%struct.packed_git* %0, i32 (%struct.object_id*, %struct.packed_git*, i64, i8*)* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.packed_git*, align 8
  %7 = alloca i32 (%struct.object_id*, %struct.packed_git*, i64, i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.object_id, align 4
  store %struct.packed_git* %0, %struct.packed_git** %6, align 8
  store i32 (%struct.object_id*, %struct.packed_git*, i64, i8*)* %1, i32 (%struct.object_id*, %struct.packed_git*, i64, i8*)** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @FOR_EACH_OBJECT_PACK_ORDER, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %4
  %19 = load %struct.packed_git*, %struct.packed_git** %6, align 8
  %20 = call i64 @load_pack_revindex(%struct.packed_git* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 -1, i32* %5, align 4
  br label %72

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %23, %4
  store i64 0, i64* %10, align 8
  br label %25

25:                                               ; preds = %67, %24
  %26 = load i64, i64* %10, align 8
  %27 = load %struct.packed_git*, %struct.packed_git** %6, align 8
  %28 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %26, %29
  br i1 %30, label %31, label %70

31:                                               ; preds = %25
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @FOR_EACH_OBJECT_PACK_ORDER, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load %struct.packed_git*, %struct.packed_git** %6, align 8
  %38 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i64, i64* %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %12, align 8
  br label %46

44:                                               ; preds = %31
  %45 = load i64, i64* %10, align 8
  store i64 %45, i64* %12, align 8
  br label %46

46:                                               ; preds = %44, %36
  %47 = load %struct.packed_git*, %struct.packed_git** %6, align 8
  %48 = load i64, i64* %12, align 8
  %49 = call i32 @nth_packed_object_oid(%struct.object_id* %13, %struct.packed_git* %47, i64 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %46
  %52 = load i64, i64* %12, align 8
  %53 = load %struct.packed_git*, %struct.packed_git** %6, align 8
  %54 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %52, i8* %55)
  store i32 %56, i32* %5, align 4
  br label %72

57:                                               ; preds = %46
  %58 = load i32 (%struct.object_id*, %struct.packed_git*, i64, i8*)*, i32 (%struct.object_id*, %struct.packed_git*, i64, i8*)** %7, align 8
  %59 = load %struct.packed_git*, %struct.packed_git** %6, align 8
  %60 = load i64, i64* %12, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 %58(%struct.object_id* %13, %struct.packed_git* %59, i64 %60, i8* %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %70

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %66
  %68 = load i64, i64* %10, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %10, align 8
  br label %25

70:                                               ; preds = %65, %25
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %70, %51, %22
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i64 @load_pack_revindex(%struct.packed_git*) #1

declare dso_local i32 @nth_packed_object_oid(%struct.object_id*, %struct.packed_git*, i64) #1

declare dso_local i32 @error(i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
