; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_pstree.c_acpi_ps_get_depth_next.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_pstree.c_acpi_ps_get_depth_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_parse_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %union.acpi_parse_object*, %union.acpi_parse_object* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %union.acpi_parse_object* @acpi_ps_get_depth_next(%union.acpi_parse_object* %0, %union.acpi_parse_object* %1) #0 {
  %3 = alloca %union.acpi_parse_object*, align 8
  %4 = alloca %union.acpi_parse_object*, align 8
  %5 = alloca %union.acpi_parse_object*, align 8
  %6 = alloca %union.acpi_parse_object*, align 8
  %7 = alloca %union.acpi_parse_object*, align 8
  %8 = alloca %union.acpi_parse_object*, align 8
  store %union.acpi_parse_object* %0, %union.acpi_parse_object** %4, align 8
  store %union.acpi_parse_object* %1, %union.acpi_parse_object** %5, align 8
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %6, align 8
  %9 = call i32 (...) @ACPI_FUNCTION_ENTRY()
  %10 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %11 = icmp ne %union.acpi_parse_object* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %3, align 8
  br label %95

13:                                               ; preds = %2
  %14 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %15 = call %union.acpi_parse_object* @acpi_ps_get_arg(%union.acpi_parse_object* %14, i32 0)
  store %union.acpi_parse_object* %15, %union.acpi_parse_object** %6, align 8
  %16 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %17 = icmp ne %union.acpi_parse_object* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %20 = call i32 @ASL_CV_LABEL_FILENODE(%union.acpi_parse_object* %19)
  %21 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  store %union.acpi_parse_object* %21, %union.acpi_parse_object** %3, align 8
  br label %95

22:                                               ; preds = %13
  %23 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %24 = bitcast %union.acpi_parse_object* %23 to %struct.TYPE_2__*
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load %union.acpi_parse_object*, %union.acpi_parse_object** %25, align 8
  store %union.acpi_parse_object* %26, %union.acpi_parse_object** %6, align 8
  %27 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %28 = icmp ne %union.acpi_parse_object* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %31 = call i32 @ASL_CV_LABEL_FILENODE(%union.acpi_parse_object* %30)
  %32 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  store %union.acpi_parse_object* %32, %union.acpi_parse_object** %3, align 8
  br label %95

33:                                               ; preds = %22
  %34 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %35 = bitcast %union.acpi_parse_object* %34 to %struct.TYPE_2__*
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %union.acpi_parse_object*, %union.acpi_parse_object** %36, align 8
  store %union.acpi_parse_object* %37, %union.acpi_parse_object** %7, align 8
  br label %38

38:                                               ; preds = %85, %33
  %39 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %40 = icmp ne %union.acpi_parse_object* %39, null
  br i1 %40, label %41, label %91

41:                                               ; preds = %38
  %42 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %43 = call %union.acpi_parse_object* @acpi_ps_get_arg(%union.acpi_parse_object* %42, i32 0)
  store %union.acpi_parse_object* %43, %union.acpi_parse_object** %8, align 8
  br label %44

44:                                               ; preds = %57, %41
  %45 = load %union.acpi_parse_object*, %union.acpi_parse_object** %8, align 8
  %46 = icmp ne %union.acpi_parse_object* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load %union.acpi_parse_object*, %union.acpi_parse_object** %8, align 8
  %49 = load %union.acpi_parse_object*, %union.acpi_parse_object** %4, align 8
  %50 = icmp ne %union.acpi_parse_object* %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load %union.acpi_parse_object*, %union.acpi_parse_object** %8, align 8
  %53 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %54 = icmp ne %union.acpi_parse_object* %52, %53
  br label %55

55:                                               ; preds = %51, %47, %44
  %56 = phi i1 [ false, %47 ], [ false, %44 ], [ %54, %51 ]
  br i1 %56, label %57, label %64

57:                                               ; preds = %55
  %58 = load %union.acpi_parse_object*, %union.acpi_parse_object** %8, align 8
  %59 = call i32 @ASL_CV_LABEL_FILENODE(%union.acpi_parse_object* %58)
  %60 = load %union.acpi_parse_object*, %union.acpi_parse_object** %8, align 8
  %61 = bitcast %union.acpi_parse_object* %60 to %struct.TYPE_2__*
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load %union.acpi_parse_object*, %union.acpi_parse_object** %62, align 8
  store %union.acpi_parse_object* %63, %union.acpi_parse_object** %8, align 8
  br label %44

64:                                               ; preds = %55
  %65 = load %union.acpi_parse_object*, %union.acpi_parse_object** %8, align 8
  %66 = load %union.acpi_parse_object*, %union.acpi_parse_object** %4, align 8
  %67 = icmp eq %union.acpi_parse_object* %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %3, align 8
  br label %95

69:                                               ; preds = %64
  %70 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %71 = bitcast %union.acpi_parse_object* %70 to %struct.TYPE_2__*
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load %union.acpi_parse_object*, %union.acpi_parse_object** %72, align 8
  %74 = icmp ne %union.acpi_parse_object* %73, null
  br i1 %74, label %75, label %85

75:                                               ; preds = %69
  %76 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %77 = bitcast %union.acpi_parse_object* %76 to %struct.TYPE_2__*
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load %union.acpi_parse_object*, %union.acpi_parse_object** %78, align 8
  %80 = call i32 @ASL_CV_LABEL_FILENODE(%union.acpi_parse_object* %79)
  %81 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %82 = bitcast %union.acpi_parse_object* %81 to %struct.TYPE_2__*
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load %union.acpi_parse_object*, %union.acpi_parse_object** %83, align 8
  store %union.acpi_parse_object* %84, %union.acpi_parse_object** %3, align 8
  br label %95

85:                                               ; preds = %69
  %86 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  store %union.acpi_parse_object* %86, %union.acpi_parse_object** %5, align 8
  %87 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %88 = bitcast %union.acpi_parse_object* %87 to %struct.TYPE_2__*
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load %union.acpi_parse_object*, %union.acpi_parse_object** %89, align 8
  store %union.acpi_parse_object* %90, %union.acpi_parse_object** %7, align 8
  br label %38

91:                                               ; preds = %38
  %92 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %93 = call i32 @ASL_CV_LABEL_FILENODE(%union.acpi_parse_object* %92)
  %94 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  store %union.acpi_parse_object* %94, %union.acpi_parse_object** %3, align 8
  br label %95

95:                                               ; preds = %91, %75, %68, %29, %18, %12
  %96 = load %union.acpi_parse_object*, %union.acpi_parse_object** %3, align 8
  ret %union.acpi_parse_object* %96
}

declare dso_local i32 @ACPI_FUNCTION_ENTRY(...) #1

declare dso_local %union.acpi_parse_object* @acpi_ps_get_arg(%union.acpi_parse_object*, i32) #1

declare dso_local i32 @ASL_CV_LABEL_FILENODE(%union.acpi_parse_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
