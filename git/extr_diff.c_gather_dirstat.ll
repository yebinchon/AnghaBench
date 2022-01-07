; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_gather_dirstat.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_gather_dirstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_options = type { i32 }
%struct.dirstat_dir = type { i32, i32, i64, %struct.dirstat_file* }
%struct.dirstat_file = type { i8*, i64 }

@.str = private unnamed_addr constant [19 x i8] c"%s%4d.%01d%% %.*s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.diff_options*, %struct.dirstat_dir*, i64, i8*, i32)* @gather_dirstat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gather_dirstat(%struct.diff_options* %0, %struct.dirstat_dir* %1, i64 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.diff_options*, align 8
  %8 = alloca %struct.dirstat_dir*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.dirstat_file*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.diff_options* %0, %struct.diff_options** %7, align 8
  store %struct.dirstat_dir* %1, %struct.dirstat_dir** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 0, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %21 = load %struct.diff_options*, %struct.diff_options** %7, align 8
  %22 = call i8* @diff_line_prefix(%struct.diff_options* %21)
  store i8* %22, i8** %14, align 8
  br label %23

23:                                               ; preds = %93, %5
  %24 = load %struct.dirstat_dir*, %struct.dirstat_dir** %8, align 8
  %25 = getelementptr inbounds %struct.dirstat_dir, %struct.dirstat_dir* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %97

28:                                               ; preds = %23
  %29 = load %struct.dirstat_dir*, %struct.dirstat_dir** %8, align 8
  %30 = getelementptr inbounds %struct.dirstat_dir, %struct.dirstat_dir* %29, i32 0, i32 3
  %31 = load %struct.dirstat_file*, %struct.dirstat_file** %30, align 8
  store %struct.dirstat_file* %31, %struct.dirstat_file** %15, align 8
  %32 = load %struct.dirstat_file*, %struct.dirstat_file** %15, align 8
  %33 = getelementptr inbounds %struct.dirstat_file, %struct.dirstat_file* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @strlen(i8* %34)
  store i32 %35, i32* %16, align 4
  %36 = load i32, i32* %16, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  br label %97

40:                                               ; preds = %28
  %41 = load %struct.dirstat_file*, %struct.dirstat_file** %15, align 8
  %42 = getelementptr inbounds %struct.dirstat_file, %struct.dirstat_file* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i64 @memcmp(i8* %43, i8* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %97

49:                                               ; preds = %40
  %50 = load %struct.dirstat_file*, %struct.dirstat_file** %15, align 8
  %51 = getelementptr inbounds %struct.dirstat_file, %struct.dirstat_file* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = call i8* @strchr(i8* %55, i8 signext 47)
  store i8* %56, i8** %18, align 8
  %57 = load i8*, i8** %18, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %79

59:                                               ; preds = %49
  %60 = load i8*, i8** %18, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  %62 = load %struct.dirstat_file*, %struct.dirstat_file** %15, align 8
  %63 = getelementptr inbounds %struct.dirstat_file, %struct.dirstat_file* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = ptrtoint i8* %61 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %19, align 4
  %69 = load %struct.diff_options*, %struct.diff_options** %7, align 8
  %70 = load %struct.dirstat_dir*, %struct.dirstat_dir** %8, align 8
  %71 = load i64, i64* %9, align 8
  %72 = load %struct.dirstat_file*, %struct.dirstat_file** %15, align 8
  %73 = getelementptr inbounds %struct.dirstat_file, %struct.dirstat_file* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load i32, i32* %19, align 4
  %76 = call i64 @gather_dirstat(%struct.diff_options* %69, %struct.dirstat_dir* %70, i64 %71, i8* %74, i32 %75)
  store i64 %76, i64* %17, align 8
  %77 = load i32, i32* %13, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %13, align 4
  br label %93

79:                                               ; preds = %49
  %80 = load %struct.dirstat_file*, %struct.dirstat_file** %15, align 8
  %81 = getelementptr inbounds %struct.dirstat_file, %struct.dirstat_file* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %17, align 8
  %83 = load %struct.dirstat_dir*, %struct.dirstat_dir** %8, align 8
  %84 = getelementptr inbounds %struct.dirstat_dir, %struct.dirstat_dir* %83, i32 0, i32 3
  %85 = load %struct.dirstat_file*, %struct.dirstat_file** %84, align 8
  %86 = getelementptr inbounds %struct.dirstat_file, %struct.dirstat_file* %85, i32 1
  store %struct.dirstat_file* %86, %struct.dirstat_file** %84, align 8
  %87 = load %struct.dirstat_dir*, %struct.dirstat_dir** %8, align 8
  %88 = getelementptr inbounds %struct.dirstat_dir, %struct.dirstat_dir* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, -1
  store i64 %90, i64* %88, align 8
  %91 = load i32, i32* %13, align 4
  %92 = add i32 %91, 2
  store i32 %92, i32* %13, align 4
  br label %93

93:                                               ; preds = %79, %59
  %94 = load i64, i64* %17, align 8
  %95 = load i64, i64* %12, align 8
  %96 = add i64 %95, %94
  store i64 %96, i64* %12, align 8
  br label %23

97:                                               ; preds = %48, %39, %23
  %98 = load i32, i32* %11, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %137

100:                                              ; preds = %97
  %101 = load i32, i32* %13, align 4
  %102 = icmp ne i32 %101, 1
  br i1 %102, label %103, label %137

103:                                              ; preds = %100
  %104 = load i64, i64* %12, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %136

106:                                              ; preds = %103
  %107 = load i64, i64* %12, align 8
  %108 = mul i64 %107, 1000
  %109 = load i64, i64* %9, align 8
  %110 = udiv i64 %108, %109
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %20, align 4
  %112 = load i32, i32* %20, align 4
  %113 = load %struct.dirstat_dir*, %struct.dirstat_dir** %8, align 8
  %114 = getelementptr inbounds %struct.dirstat_dir, %struct.dirstat_dir* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp sge i32 %112, %115
  br i1 %116, label %117, label %135

117:                                              ; preds = %106
  %118 = load %struct.diff_options*, %struct.diff_options** %7, align 8
  %119 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i8*, i8** %14, align 8
  %122 = load i32, i32* %20, align 4
  %123 = sdiv i32 %122, 10
  %124 = load i32, i32* %20, align 4
  %125 = srem i32 %124, 10
  %126 = load i32, i32* %11, align 4
  %127 = load i8*, i8** %10, align 8
  %128 = call i32 @fprintf(i32 %120, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %121, i32 %123, i32 %125, i32 %126, i8* %127)
  %129 = load %struct.dirstat_dir*, %struct.dirstat_dir** %8, align 8
  %130 = getelementptr inbounds %struct.dirstat_dir, %struct.dirstat_dir* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %117
  store i64 0, i64* %6, align 8
  br label %139

134:                                              ; preds = %117
  br label %135

135:                                              ; preds = %134, %106
  br label %136

136:                                              ; preds = %135, %103
  br label %137

137:                                              ; preds = %136, %100, %97
  %138 = load i64, i64* %12, align 8
  store i64 %138, i64* %6, align 8
  br label %139

139:                                              ; preds = %137, %133
  %140 = load i64, i64* %6, align 8
  ret i64 %140
}

declare dso_local i8* @diff_line_prefix(%struct.diff_options*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
