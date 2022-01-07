; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_mdesc.c_mdesc_node_by_name.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_mdesc.c_mdesc_node_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdesc_handle = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.mdesc_elem = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@MDESC_NODE_NULL = common dso_local global i64 0, align 8
@MD_NODE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mdesc_node_by_name(%struct.mdesc_handle* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.mdesc_handle*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mdesc_elem*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.mdesc_handle* %0, %struct.mdesc_handle** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.mdesc_handle*, %struct.mdesc_handle** %5, align 8
  %13 = getelementptr inbounds %struct.mdesc_handle, %struct.mdesc_handle* %12, i32 0, i32 0
  %14 = call %struct.mdesc_elem* @node_block(%struct.TYPE_5__* %13)
  store %struct.mdesc_elem* %14, %struct.mdesc_elem** %8, align 8
  %15 = load %struct.mdesc_handle*, %struct.mdesc_handle** %5, align 8
  %16 = getelementptr inbounds %struct.mdesc_handle, %struct.mdesc_handle* %15, i32 0, i32 0
  %17 = call i8* @name_block(%struct.TYPE_5__* %16)
  store i8* %17, i8** %9, align 8
  %18 = load %struct.mdesc_handle*, %struct.mdesc_handle** %5, align 8
  %19 = getelementptr inbounds %struct.mdesc_handle, %struct.mdesc_handle* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sdiv i32 %21, 16
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @MDESC_NODE_NULL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  store i64 0, i64* %6, align 8
  store i64 0, i64* %11, align 8
  br label %42

28:                                               ; preds = %3
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %10, align 8
  %31 = icmp uge i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i64, i64* @MDESC_NODE_NULL, align 8
  store i64 %33, i64* %4, align 8
  br label %85

34:                                               ; preds = %28
  %35 = load %struct.mdesc_elem*, %struct.mdesc_elem** %8, align 8
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds %struct.mdesc_elem, %struct.mdesc_elem* %35, i64 %36
  %38 = getelementptr inbounds %struct.mdesc_elem, %struct.mdesc_elem* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %11, align 8
  br label %41

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %27
  br label %43

43:                                               ; preds = %70, %42
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* %10, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %77

47:                                               ; preds = %43
  %48 = load %struct.mdesc_elem*, %struct.mdesc_elem** %8, align 8
  %49 = load i64, i64* %11, align 8
  %50 = getelementptr inbounds %struct.mdesc_elem, %struct.mdesc_elem* %48, i64 %49
  %51 = getelementptr inbounds %struct.mdesc_elem, %struct.mdesc_elem* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @MD_NODE, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i64, i64* @MDESC_NODE_NULL, align 8
  store i64 %56, i64* %4, align 8
  br label %85

57:                                               ; preds = %47
  %58 = load i8*, i8** %9, align 8
  %59 = load %struct.mdesc_elem*, %struct.mdesc_elem** %8, align 8
  %60 = load i64, i64* %11, align 8
  %61 = getelementptr inbounds %struct.mdesc_elem, %struct.mdesc_elem* %59, i64 %60
  %62 = getelementptr inbounds %struct.mdesc_elem, %struct.mdesc_elem* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %58, i64 %64
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @strcmp(i8* %65, i8* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %57
  br label %77

70:                                               ; preds = %57
  %71 = load %struct.mdesc_elem*, %struct.mdesc_elem** %8, align 8
  %72 = load i64, i64* %11, align 8
  %73 = getelementptr inbounds %struct.mdesc_elem, %struct.mdesc_elem* %71, i64 %72
  %74 = getelementptr inbounds %struct.mdesc_elem, %struct.mdesc_elem* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %11, align 8
  br label %43

77:                                               ; preds = %69, %43
  %78 = load i64, i64* %11, align 8
  %79 = load i64, i64* %10, align 8
  %80 = icmp uge i64 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load i64, i64* @MDESC_NODE_NULL, align 8
  store i64 %82, i64* %11, align 8
  br label %83

83:                                               ; preds = %81, %77
  %84 = load i64, i64* %11, align 8
  store i64 %84, i64* %4, align 8
  br label %85

85:                                               ; preds = %83, %55, %32
  %86 = load i64, i64* %4, align 8
  ret i64 %86
}

declare dso_local %struct.mdesc_elem* @node_block(%struct.TYPE_5__*) #1

declare dso_local i8* @name_block(%struct.TYPE_5__*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
