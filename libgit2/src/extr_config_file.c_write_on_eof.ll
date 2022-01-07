; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_config_file.c_write_on_eof.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_config_file.c_write_on_eof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.write_data = type { i32, i32, i32, i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*)* @write_on_eof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_on_eof(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.write_data*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.write_data*
  store %struct.write_data* %11, %struct.write_data** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @GIT_UNUSED(i32* %12)
  %14 = load %struct.write_data*, %struct.write_data** %8, align 8
  %15 = getelementptr inbounds %struct.write_data, %struct.write_data* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.write_data*, %struct.write_data** %8, align 8
  %18 = getelementptr inbounds %struct.write_data, %struct.write_data* %17, i32 0, i32 6
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.write_data*, %struct.write_data** %8, align 8
  %22 = getelementptr inbounds %struct.write_data, %struct.write_data* %21, i32 0, i32 6
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @git_buf_put(i32 %16, i32 %20, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %4, align 4
  br label %71

29:                                               ; preds = %3
  %30 = load %struct.write_data*, %struct.write_data** %8, align 8
  %31 = getelementptr inbounds %struct.write_data, %struct.write_data* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.write_data*, %struct.write_data** %8, align 8
  %36 = getelementptr inbounds %struct.write_data, %struct.write_data* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %69, label %39

39:                                               ; preds = %34, %29
  %40 = load %struct.write_data*, %struct.write_data** %8, align 8
  %41 = getelementptr inbounds %struct.write_data, %struct.write_data* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %69

44:                                               ; preds = %39
  %45 = load i8*, i8** %6, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load i8*, i8** %6, align 8
  %49 = load %struct.write_data*, %struct.write_data** %8, align 8
  %50 = getelementptr inbounds %struct.write_data, %struct.write_data* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @strcmp(i8* %48, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %47, %44
  %55 = load %struct.write_data*, %struct.write_data** %8, align 8
  %56 = getelementptr inbounds %struct.write_data, %struct.write_data* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.write_data*, %struct.write_data** %8, align 8
  %59 = getelementptr inbounds %struct.write_data, %struct.write_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @write_section(i32 %57, i32 %60)
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %54, %47
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load %struct.write_data*, %struct.write_data** %8, align 8
  %67 = call i32 @write_value(%struct.write_data* %66)
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %65, %62
  br label %69

69:                                               ; preds = %68, %39, %34
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %69, %27
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @GIT_UNUSED(i32*) #1

declare dso_local i32 @git_buf_put(i32, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @write_section(i32, i32) #1

declare dso_local i32 @write_value(%struct.write_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
