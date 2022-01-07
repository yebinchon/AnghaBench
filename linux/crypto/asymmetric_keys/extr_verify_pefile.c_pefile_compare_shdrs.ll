; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_verify_pefile.c_pefile_compare_shdrs.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_verify_pefile.c_pefile_compare_shdrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.section_header = type { i64, i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @pefile_compare_shdrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pefile_compare_shdrs(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.section_header*, align 8
  %7 = alloca %struct.section_header*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.section_header*
  store %struct.section_header* %10, %struct.section_header** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.section_header*
  store %struct.section_header* %12, %struct.section_header** %7, align 8
  %13 = load %struct.section_header*, %struct.section_header** %6, align 8
  %14 = getelementptr inbounds %struct.section_header, %struct.section_header* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.section_header*, %struct.section_header** %7, align 8
  %17 = getelementptr inbounds %struct.section_header, %struct.section_header* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %97

21:                                               ; preds = %2
  %22 = load %struct.section_header*, %struct.section_header** %7, align 8
  %23 = getelementptr inbounds %struct.section_header, %struct.section_header* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.section_header*, %struct.section_header** %6, align 8
  %26 = getelementptr inbounds %struct.section_header, %struct.section_header* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 -1, i32* %3, align 4
  br label %97

30:                                               ; preds = %21
  %31 = load %struct.section_header*, %struct.section_header** %6, align 8
  %32 = getelementptr inbounds %struct.section_header, %struct.section_header* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.section_header*, %struct.section_header** %7, align 8
  %35 = getelementptr inbounds %struct.section_header, %struct.section_header* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %97

39:                                               ; preds = %30
  %40 = load %struct.section_header*, %struct.section_header** %7, align 8
  %41 = getelementptr inbounds %struct.section_header, %struct.section_header* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.section_header*, %struct.section_header** %6, align 8
  %44 = getelementptr inbounds %struct.section_header, %struct.section_header* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store i32 -1, i32* %3, align 4
  br label %97

48:                                               ; preds = %39
  %49 = load %struct.section_header*, %struct.section_header** %6, align 8
  %50 = getelementptr inbounds %struct.section_header, %struct.section_header* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.section_header*, %struct.section_header** %7, align 8
  %53 = getelementptr inbounds %struct.section_header, %struct.section_header* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @strcmp(i32 %51, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %48
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %3, align 4
  br label %97

60:                                               ; preds = %48
  %61 = load %struct.section_header*, %struct.section_header** %6, align 8
  %62 = getelementptr inbounds %struct.section_header, %struct.section_header* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.section_header*, %struct.section_header** %7, align 8
  %65 = getelementptr inbounds %struct.section_header, %struct.section_header* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp sgt i64 %63, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  store i32 1, i32* %3, align 4
  br label %97

69:                                               ; preds = %60
  %70 = load %struct.section_header*, %struct.section_header** %7, align 8
  %71 = getelementptr inbounds %struct.section_header, %struct.section_header* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.section_header*, %struct.section_header** %6, align 8
  %74 = getelementptr inbounds %struct.section_header, %struct.section_header* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp sgt i64 %72, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  store i32 -1, i32* %3, align 4
  br label %97

78:                                               ; preds = %69
  %79 = load %struct.section_header*, %struct.section_header** %6, align 8
  %80 = getelementptr inbounds %struct.section_header, %struct.section_header* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.section_header*, %struct.section_header** %7, align 8
  %83 = getelementptr inbounds %struct.section_header, %struct.section_header* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = icmp sgt i64 %81, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  store i32 1, i32* %3, align 4
  br label %97

87:                                               ; preds = %78
  %88 = load %struct.section_header*, %struct.section_header** %7, align 8
  %89 = getelementptr inbounds %struct.section_header, %struct.section_header* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.section_header*, %struct.section_header** %6, align 8
  %92 = getelementptr inbounds %struct.section_header, %struct.section_header* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = icmp sgt i64 %90, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %87
  store i32 -1, i32* %3, align 4
  br label %97

96:                                               ; preds = %87
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %96, %95, %86, %77, %68, %58, %47, %38, %29, %20
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
