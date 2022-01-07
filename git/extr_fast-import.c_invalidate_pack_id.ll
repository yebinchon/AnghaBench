; ModuleID = '/home/carl/AnghaBench/git/extr_fast-import.c_invalidate_pack_id.c'
source_filename = "/home/carl/AnghaBench/git/extr_fast-import.c_invalidate_pack_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_entry = type { i32, %struct.object_entry* }
%struct.branch = type { i32, %struct.branch* }
%struct.tag = type { i32, %struct.tag* }

@object_table = common dso_local global %struct.object_entry** null, align 8
@MAX_PACK_ID = common dso_local global i8* null, align 8
@branch_table_sz = common dso_local global i64 0, align 8
@branch_table = common dso_local global %struct.branch** null, align 8
@first_tag = common dso_local global %struct.tag* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @invalidate_pack_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @invalidate_pack_id(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.tag*, align 8
  %6 = alloca %struct.object_entry*, align 8
  %7 = alloca %struct.branch*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %39, %1
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.object_entry**, %struct.object_entry*** @object_table, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.object_entry** %10)
  %12 = icmp ult i32 %9, %11
  br i1 %12, label %13, label %42

13:                                               ; preds = %8
  %14 = load %struct.object_entry**, %struct.object_entry*** @object_table, align 8
  %15 = load i32, i32* %3, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.object_entry*, %struct.object_entry** %14, i64 %16
  %18 = load %struct.object_entry*, %struct.object_entry** %17, align 8
  store %struct.object_entry* %18, %struct.object_entry** %6, align 8
  br label %19

19:                                               ; preds = %34, %13
  %20 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %21 = icmp ne %struct.object_entry* %20, null
  br i1 %21, label %22, label %38

22:                                               ; preds = %19
  %23 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %24 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %2, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load i8*, i8** @MAX_PACK_ID, align 8
  %30 = ptrtoint i8* %29 to i32
  %31 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %32 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  br label %33

33:                                               ; preds = %28, %22
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %36 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %35, i32 0, i32 1
  %37 = load %struct.object_entry*, %struct.object_entry** %36, align 8
  store %struct.object_entry* %37, %struct.object_entry** %6, align 8
  br label %19

38:                                               ; preds = %19
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %3, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %8

42:                                               ; preds = %8
  store i64 0, i64* %4, align 8
  br label %43

43:                                               ; preds = %72, %42
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* @branch_table_sz, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %75

47:                                               ; preds = %43
  %48 = load %struct.branch**, %struct.branch*** @branch_table, align 8
  %49 = load i64, i64* %4, align 8
  %50 = getelementptr inbounds %struct.branch*, %struct.branch** %48, i64 %49
  %51 = load %struct.branch*, %struct.branch** %50, align 8
  store %struct.branch* %51, %struct.branch** %7, align 8
  br label %52

52:                                               ; preds = %67, %47
  %53 = load %struct.branch*, %struct.branch** %7, align 8
  %54 = icmp ne %struct.branch* %53, null
  br i1 %54, label %55, label %71

55:                                               ; preds = %52
  %56 = load %struct.branch*, %struct.branch** %7, align 8
  %57 = getelementptr inbounds %struct.branch, %struct.branch* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %2, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load i8*, i8** @MAX_PACK_ID, align 8
  %63 = ptrtoint i8* %62 to i32
  %64 = load %struct.branch*, %struct.branch** %7, align 8
  %65 = getelementptr inbounds %struct.branch, %struct.branch* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  br label %66

66:                                               ; preds = %61, %55
  br label %67

67:                                               ; preds = %66
  %68 = load %struct.branch*, %struct.branch** %7, align 8
  %69 = getelementptr inbounds %struct.branch, %struct.branch* %68, i32 0, i32 1
  %70 = load %struct.branch*, %struct.branch** %69, align 8
  store %struct.branch* %70, %struct.branch** %7, align 8
  br label %52

71:                                               ; preds = %52
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* %4, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %4, align 8
  br label %43

75:                                               ; preds = %43
  %76 = load %struct.tag*, %struct.tag** @first_tag, align 8
  store %struct.tag* %76, %struct.tag** %5, align 8
  br label %77

77:                                               ; preds = %92, %75
  %78 = load %struct.tag*, %struct.tag** %5, align 8
  %79 = icmp ne %struct.tag* %78, null
  br i1 %79, label %80, label %96

80:                                               ; preds = %77
  %81 = load %struct.tag*, %struct.tag** %5, align 8
  %82 = getelementptr inbounds %struct.tag, %struct.tag* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %2, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %80
  %87 = load i8*, i8** @MAX_PACK_ID, align 8
  %88 = ptrtoint i8* %87 to i32
  %89 = load %struct.tag*, %struct.tag** %5, align 8
  %90 = getelementptr inbounds %struct.tag, %struct.tag* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  br label %91

91:                                               ; preds = %86, %80
  br label %92

92:                                               ; preds = %91
  %93 = load %struct.tag*, %struct.tag** %5, align 8
  %94 = getelementptr inbounds %struct.tag, %struct.tag* %93, i32 0, i32 1
  %95 = load %struct.tag*, %struct.tag** %94, align 8
  store %struct.tag* %95, %struct.tag** %5, align 8
  br label %77

96:                                               ; preds = %77
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.object_entry**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
