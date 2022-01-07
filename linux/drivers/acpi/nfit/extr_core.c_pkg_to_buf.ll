; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_pkg_to_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_pkg_to_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_object = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32* }
%struct.TYPE_4__ = type { i32, %union.acpi_object* }
%struct.TYPE_5__ = type { i32 }

@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"BIOS bug, unexpected element type: %d\0A\00", align 1
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@ACPI_TYPE_BUFFER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%union.acpi_object* (%union.acpi_object*)* @pkg_to_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %union.acpi_object* @pkg_to_buf(%union.acpi_object* %0) #0 {
  %2 = alloca %union.acpi_object*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %union.acpi_object*, align 8
  %7 = alloca %union.acpi_object*, align 8
  %8 = alloca %union.acpi_object*, align 8
  store %union.acpi_object* %0, %union.acpi_object** %2, align 8
  store i64 0, i64* %5, align 8
  store %union.acpi_object* null, %union.acpi_object** %6, align 8
  %9 = load %union.acpi_object*, %union.acpi_object** %2, align 8
  %10 = bitcast %union.acpi_object* %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %union.acpi_object*, %union.acpi_object** %2, align 8
  %16 = bitcast %union.acpi_object* %15 to i64*
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %17)
  br label %148

19:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %63, %19
  %21 = load i32, i32* %3, align 4
  %22 = load %union.acpi_object*, %union.acpi_object** %2, align 8
  %23 = bitcast %union.acpi_object* %22 to %struct.TYPE_4__*
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %21, %25
  br i1 %26, label %27, label %66

27:                                               ; preds = %20
  %28 = load %union.acpi_object*, %union.acpi_object** %2, align 8
  %29 = bitcast %union.acpi_object* %28 to %struct.TYPE_4__*
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load %union.acpi_object*, %union.acpi_object** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %31, i64 %33
  store %union.acpi_object* %34, %union.acpi_object** %7, align 8
  %35 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %36 = bitcast %union.acpi_object* %35 to i64*
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %27
  %41 = load i64, i64* %5, align 8
  %42 = add i64 %41, 4
  store i64 %42, i64* %5, align 8
  br label %62

43:                                               ; preds = %27
  %44 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %45 = bitcast %union.acpi_object* %44 to i64*
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %51 = bitcast %union.acpi_object* %50 to %struct.TYPE_6__*
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %5, align 8
  %55 = add i64 %54, %53
  store i64 %55, i64* %5, align 8
  br label %61

56:                                               ; preds = %43
  %57 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %58 = bitcast %union.acpi_object* %57 to i64*
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %59)
  br label %148

61:                                               ; preds = %49
  br label %62

62:                                               ; preds = %61, %40
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %3, align 4
  br label %20

66:                                               ; preds = %20
  %67 = load i64, i64* %5, align 8
  %68 = add i64 16, %67
  %69 = trunc i64 %68 to i32
  %70 = call %union.acpi_object* @ACPI_ALLOCATE(i32 %69)
  store %union.acpi_object* %70, %union.acpi_object** %6, align 8
  %71 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %72 = icmp ne %union.acpi_object* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %66
  br label %148

74:                                               ; preds = %66
  %75 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %76 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %75, i64 1
  %77 = bitcast %union.acpi_object* %76 to i8*
  store i8* %77, i8** %4, align 8
  %78 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %79 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %80 = bitcast %union.acpi_object* %79 to i64*
  store i64 %78, i64* %80, align 8
  %81 = load i64, i64* %5, align 8
  %82 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %83 = bitcast %union.acpi_object* %82 to %struct.TYPE_6__*
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  store i64 %81, i64* %84, align 8
  %85 = load i8*, i8** %4, align 8
  %86 = bitcast i8* %85 to i32*
  %87 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %88 = bitcast %union.acpi_object* %87 to %struct.TYPE_6__*
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  store i32* %86, i32** %89, align 8
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %144, %74
  %91 = load i32, i32* %3, align 4
  %92 = load %union.acpi_object*, %union.acpi_object** %2, align 8
  %93 = bitcast %union.acpi_object* %92 to %struct.TYPE_4__*
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp slt i32 %91, %95
  br i1 %96, label %97, label %147

97:                                               ; preds = %90
  %98 = load %union.acpi_object*, %union.acpi_object** %2, align 8
  %99 = bitcast %union.acpi_object* %98 to %struct.TYPE_4__*
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load %union.acpi_object*, %union.acpi_object** %100, align 8
  %102 = load i32, i32* %3, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %101, i64 %103
  store %union.acpi_object* %104, %union.acpi_object** %8, align 8
  %105 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %106 = bitcast %union.acpi_object* %105 to i64*
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %118

110:                                              ; preds = %97
  %111 = load i8*, i8** %4, align 8
  %112 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %113 = bitcast %union.acpi_object* %112 to %struct.TYPE_5__*
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = call i32 @memcpy(i8* %111, i32* %114, i32 4)
  %116 = load i8*, i8** %4, align 8
  %117 = getelementptr i8, i8* %116, i64 4
  store i8* %117, i8** %4, align 8
  br label %143

118:                                              ; preds = %97
  %119 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %120 = bitcast %union.acpi_object* %119 to i64*
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %142

124:                                              ; preds = %118
  %125 = load i8*, i8** %4, align 8
  %126 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %127 = bitcast %union.acpi_object* %126 to %struct.TYPE_6__*
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %131 = bitcast %union.acpi_object* %130 to %struct.TYPE_6__*
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = trunc i64 %133 to i32
  %135 = call i32 @memcpy(i8* %125, i32* %129, i32 %134)
  %136 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %137 = bitcast %union.acpi_object* %136 to %struct.TYPE_6__*
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i8*, i8** %4, align 8
  %141 = getelementptr i8, i8* %140, i64 %139
  store i8* %141, i8** %4, align 8
  br label %142

142:                                              ; preds = %124, %118
  br label %143

143:                                              ; preds = %142, %110
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %3, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %3, align 4
  br label %90

147:                                              ; preds = %90
  br label %148

148:                                              ; preds = %147, %73, %56, %14
  %149 = load %union.acpi_object*, %union.acpi_object** %2, align 8
  %150 = call i32 @ACPI_FREE(%union.acpi_object* %149)
  %151 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  ret %union.acpi_object* %151
}

declare dso_local i32 @WARN_ONCE(i32, i8*, i64) #1

declare dso_local %union.acpi_object* @ACPI_ALLOCATE(i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @ACPI_FREE(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
