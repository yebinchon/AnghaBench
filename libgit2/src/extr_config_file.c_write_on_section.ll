; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_config_file.c_write_on_section.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_config_file.c_write_on_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.write_data = type { i32, %struct.TYPE_2__, i32, i32, i64, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i64, i8*)* @write_on_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_on_section(i32* %0, i8* %1, i8* %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.write_data*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = load i8*, i8** %10, align 8
  %14 = bitcast i8* %13 to %struct.write_data*
  store %struct.write_data* %14, %struct.write_data** %11, align 8
  store i32 0, i32* %12, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @GIT_UNUSED(i32* %15)
  %17 = load %struct.write_data*, %struct.write_data** %11, align 8
  %18 = getelementptr inbounds %struct.write_data, %struct.write_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %5
  %22 = load %struct.write_data*, %struct.write_data** %11, align 8
  %23 = getelementptr inbounds %struct.write_data, %struct.write_data* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %21
  %27 = load %struct.write_data*, %struct.write_data** %11, align 8
  %28 = getelementptr inbounds %struct.write_data, %struct.write_data* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.write_data*, %struct.write_data** %11, align 8
  %33 = call i32 @write_value(%struct.write_data* %32)
  store i32 %33, i32* %12, align 4
  br label %34

34:                                               ; preds = %31, %26, %21, %5
  %35 = load i8*, i8** %7, align 8
  %36 = load %struct.write_data*, %struct.write_data** %11, align 8
  %37 = getelementptr inbounds %struct.write_data, %struct.write_data* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @strcmp(i8* %35, i32 %38)
  %40 = icmp eq i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = load %struct.write_data*, %struct.write_data** %11, align 8
  %43 = getelementptr inbounds %struct.write_data, %struct.write_data* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %62, label %46

46:                                               ; preds = %34
  %47 = load %struct.write_data*, %struct.write_data** %11, align 8
  %48 = getelementptr inbounds %struct.write_data, %struct.write_data* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.write_data*, %struct.write_data** %11, align 8
  %51 = getelementptr inbounds %struct.write_data, %struct.write_data* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.write_data*, %struct.write_data** %11, align 8
  %55 = getelementptr inbounds %struct.write_data, %struct.write_data* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @git_buf_put(i32 %49, i32 %53, i32 %57)
  store i32 %58, i32* %12, align 4
  %59 = load %struct.write_data*, %struct.write_data** %11, align 8
  %60 = getelementptr inbounds %struct.write_data, %struct.write_data* %59, i32 0, i32 1
  %61 = call i32 @git_buf_clear(%struct.TYPE_2__* %60)
  br label %62

62:                                               ; preds = %46, %34
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %62
  %66 = load %struct.write_data*, %struct.write_data** %11, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = load i64, i64* %9, align 8
  %69 = call i32 @write_line(%struct.write_data* %66, i8* %67, i64 %68)
  store i32 %69, i32* %12, align 4
  br label %70

70:                                               ; preds = %65, %62
  %71 = load i32, i32* %12, align 4
  ret i32 %71
}

declare dso_local i32 @GIT_UNUSED(i32*) #1

declare dso_local i32 @write_value(%struct.write_data*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @git_buf_put(i32, i32, i32) #1

declare dso_local i32 @git_buf_clear(%struct.TYPE_2__*) #1

declare dso_local i32 @write_line(%struct.write_data*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
