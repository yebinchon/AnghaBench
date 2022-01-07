; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_config_file.c_write_on_variable.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_config_file.c_write_on_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.write_data = type { i32, i32, i32*, i32, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i8*, i8*, i64, i8*)* @write_on_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_on_variable(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4, i64 %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.write_data*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i8* %6, i8** %15, align 8
  %19 = load i8*, i8** %15, align 8
  %20 = bitcast i8* %19 to %struct.write_data*
  store %struct.write_data* %20, %struct.write_data** %16, align 8
  store i32 0, i32* %17, align 4
  %21 = load i8*, i8** %9, align 8
  %22 = call i32 @GIT_UNUSED(i8* %21)
  %23 = load i8*, i8** %10, align 8
  %24 = call i32 @GIT_UNUSED(i8* %23)
  %25 = load %struct.write_data*, %struct.write_data** %16, align 8
  %26 = getelementptr inbounds %struct.write_data, %struct.write_data* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.write_data*, %struct.write_data** %16, align 8
  %29 = getelementptr inbounds %struct.write_data, %struct.write_data* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.write_data*, %struct.write_data** %16, align 8
  %33 = getelementptr inbounds %struct.write_data, %struct.write_data* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @git_buf_put(i32 %27, i32 %31, i32 %35)
  store i32 %36, i32* %18, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %7
  %39 = load i32, i32* %18, align 4
  store i32 %39, i32* %8, align 4
  br label %91

40:                                               ; preds = %7
  %41 = load %struct.write_data*, %struct.write_data** %16, align 8
  %42 = getelementptr inbounds %struct.write_data, %struct.write_data* %41, i32 0, i32 5
  %43 = call i32 @git_buf_clear(%struct.TYPE_2__* %42)
  %44 = load %struct.write_data*, %struct.write_data** %16, align 8
  %45 = getelementptr inbounds %struct.write_data, %struct.write_data* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %40
  %49 = load %struct.write_data*, %struct.write_data** %16, align 8
  %50 = getelementptr inbounds %struct.write_data, %struct.write_data* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = call i64 @strcasecmp(i32 %51, i8* %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  store i32 1, i32* %17, align 4
  br label %56

56:                                               ; preds = %55, %48, %40
  %57 = load i32, i32* %17, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %56
  %60 = load %struct.write_data*, %struct.write_data** %16, align 8
  %61 = getelementptr inbounds %struct.write_data, %struct.write_data* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %59
  %65 = load %struct.write_data*, %struct.write_data** %16, align 8
  %66 = getelementptr inbounds %struct.write_data, %struct.write_data* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load i8*, i8** %12, align 8
  %69 = call i64 @git_regexp_match(i32* %67, i8* %68)
  %70 = icmp eq i64 %69, 0
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %17, align 4
  br label %72

72:                                               ; preds = %64, %59, %56
  %73 = load i32, i32* %17, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %72
  %76 = load %struct.write_data*, %struct.write_data** %16, align 8
  %77 = load i8*, i8** %13, align 8
  %78 = load i64, i64* %14, align 8
  %79 = call i32 @write_line(%struct.write_data* %76, i8* %77, i64 %78)
  store i32 %79, i32* %8, align 4
  br label %91

80:                                               ; preds = %72
  %81 = load %struct.write_data*, %struct.write_data** %16, align 8
  %82 = getelementptr inbounds %struct.write_data, %struct.write_data* %81, i32 0, i32 0
  store i32 1, i32* %82, align 8
  %83 = load %struct.write_data*, %struct.write_data** %16, align 8
  %84 = getelementptr inbounds %struct.write_data, %struct.write_data* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %80
  store i32 0, i32* %8, align 4
  br label %91

88:                                               ; preds = %80
  %89 = load %struct.write_data*, %struct.write_data** %16, align 8
  %90 = call i32 @write_value(%struct.write_data* %89)
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %88, %87, %75, %38
  %92 = load i32, i32* %8, align 4
  ret i32 %92
}

declare dso_local i32 @GIT_UNUSED(i8*) #1

declare dso_local i32 @git_buf_put(i32, i32, i32) #1

declare dso_local i32 @git_buf_clear(%struct.TYPE_2__*) #1

declare dso_local i64 @strcasecmp(i32, i8*) #1

declare dso_local i64 @git_regexp_match(i32*, i8*) #1

declare dso_local i32 @write_line(%struct.write_data*, i8*, i64) #1

declare dso_local i32 @write_value(%struct.write_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
