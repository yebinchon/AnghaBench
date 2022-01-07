; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_mdesc.c_mdesc_next_arc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_mdesc.c_mdesc_next_arc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdesc_handle = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mdesc_elem = type { i64, i32 }

@MDESC_NODE_NULL = common dso_local global i64 0, align 8
@MD_NODE_END = common dso_local global i64 0, align 8
@MD_PROP_ARC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mdesc_next_arc(%struct.mdesc_handle* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.mdesc_handle*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mdesc_elem*, align 8
  %9 = alloca %struct.mdesc_elem*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.mdesc_handle* %0, %struct.mdesc_handle** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.mdesc_handle*, %struct.mdesc_handle** %5, align 8
  %13 = getelementptr inbounds %struct.mdesc_handle, %struct.mdesc_handle* %12, i32 0, i32 0
  %14 = call %struct.mdesc_elem* @node_block(%struct.TYPE_3__* %13)
  store %struct.mdesc_elem* %14, %struct.mdesc_elem** %9, align 8
  %15 = load %struct.mdesc_handle*, %struct.mdesc_handle** %5, align 8
  %16 = getelementptr inbounds %struct.mdesc_handle, %struct.mdesc_handle* %15, i32 0, i32 0
  %17 = call i8* @name_block(%struct.TYPE_3__* %16)
  store i8* %17, i8** %10, align 8
  %18 = load %struct.mdesc_handle*, %struct.mdesc_handle** %5, align 8
  %19 = getelementptr inbounds %struct.mdesc_handle, %struct.mdesc_handle* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sdiv i32 %21, 16
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %11, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @MDESC_NODE_NULL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %3
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %11, align 8
  %30 = icmp sge i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27, %3
  %32 = load i64, i64* @MDESC_NODE_NULL, align 8
  store i64 %32, i64* %4, align 8
  br label %75

33:                                               ; preds = %27
  %34 = load %struct.mdesc_elem*, %struct.mdesc_elem** %9, align 8
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr inbounds %struct.mdesc_elem, %struct.mdesc_elem* %34, i64 %35
  store %struct.mdesc_elem* %36, %struct.mdesc_elem** %8, align 8
  %37 = load %struct.mdesc_elem*, %struct.mdesc_elem** %8, align 8
  %38 = getelementptr inbounds %struct.mdesc_elem, %struct.mdesc_elem* %37, i32 1
  store %struct.mdesc_elem* %38, %struct.mdesc_elem** %8, align 8
  br label %39

39:                                               ; preds = %70, %33
  %40 = load %struct.mdesc_elem*, %struct.mdesc_elem** %8, align 8
  %41 = getelementptr inbounds %struct.mdesc_elem, %struct.mdesc_elem* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @MD_NODE_END, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %73

45:                                               ; preds = %39
  %46 = load %struct.mdesc_elem*, %struct.mdesc_elem** %8, align 8
  %47 = getelementptr inbounds %struct.mdesc_elem, %struct.mdesc_elem* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @MD_PROP_ARC, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %70

52:                                               ; preds = %45
  %53 = load i8*, i8** %10, align 8
  %54 = load %struct.mdesc_elem*, %struct.mdesc_elem** %8, align 8
  %55 = getelementptr inbounds %struct.mdesc_elem, %struct.mdesc_elem* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %53, i64 %57
  %59 = load i8*, i8** %7, align 8
  %60 = call i64 @strcmp(i8* %58, i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  br label %70

63:                                               ; preds = %52
  %64 = load %struct.mdesc_elem*, %struct.mdesc_elem** %8, align 8
  %65 = load %struct.mdesc_elem*, %struct.mdesc_elem** %9, align 8
  %66 = ptrtoint %struct.mdesc_elem* %64 to i64
  %67 = ptrtoint %struct.mdesc_elem* %65 to i64
  %68 = sub i64 %66, %67
  %69 = sdiv exact i64 %68, 16
  store i64 %69, i64* %4, align 8
  br label %75

70:                                               ; preds = %62, %51
  %71 = load %struct.mdesc_elem*, %struct.mdesc_elem** %8, align 8
  %72 = getelementptr inbounds %struct.mdesc_elem, %struct.mdesc_elem* %71, i32 1
  store %struct.mdesc_elem* %72, %struct.mdesc_elem** %8, align 8
  br label %39

73:                                               ; preds = %39
  %74 = load i64, i64* @MDESC_NODE_NULL, align 8
  store i64 %74, i64* %4, align 8
  br label %75

75:                                               ; preds = %73, %63, %31
  %76 = load i64, i64* %4, align 8
  ret i64 %76
}

declare dso_local %struct.mdesc_elem* @node_block(%struct.TYPE_3__*) #1

declare dso_local i8* @name_block(%struct.TYPE_3__*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
