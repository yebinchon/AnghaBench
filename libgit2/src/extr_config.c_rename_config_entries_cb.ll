; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_config.c_rename_config_entries_cb.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_config.c_rename_config_entries_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }
%struct.rename_data = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*)* @rename_config_entries_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rename_config_entries_cb(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rename_data*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.rename_data*
  store %struct.rename_data* %9, %struct.rename_data** %6, align 8
  %10 = load %struct.rename_data*, %struct.rename_data** %6, align 8
  %11 = getelementptr inbounds %struct.rename_data, %struct.rename_data* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @git_buf_len(i32 %12)
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ugt i64 %14, 0
  br i1 %15, label %16, label %46

16:                                               ; preds = %2
  %17 = load %struct.rename_data*, %struct.rename_data** %6, align 8
  %18 = getelementptr inbounds %struct.rename_data, %struct.rename_data* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.rename_data*, %struct.rename_data** %6, align 8
  %24 = getelementptr inbounds %struct.rename_data, %struct.rename_data* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  %27 = call i32 @git_buf_puts(i32 %19, i64 %26)
  store i32 %27, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %46, label %29

29:                                               ; preds = %16
  %30 = load %struct.rename_data*, %struct.rename_data** %6, align 8
  %31 = getelementptr inbounds %struct.rename_data, %struct.rename_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.rename_data*, %struct.rename_data** %6, align 8
  %34 = getelementptr inbounds %struct.rename_data, %struct.rename_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @git_buf_cstr(i32 %35)
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @git_config_set_string(i32 %32, i32 %36, i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load %struct.rename_data*, %struct.rename_data** %6, align 8
  %42 = getelementptr inbounds %struct.rename_data, %struct.rename_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @git_buf_truncate(i32 %43, i64 %44)
  br label %46

46:                                               ; preds = %29, %16, %2
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %46
  %50 = load %struct.rename_data*, %struct.rename_data** %6, align 8
  %51 = getelementptr inbounds %struct.rename_data, %struct.rename_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @git_config_delete_entry(i32 %52, i64 %55)
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %49, %46
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i64 @git_buf_len(i32) #1

declare dso_local i32 @git_buf_puts(i32, i64) #1

declare dso_local i32 @git_config_set_string(i32, i32, i32) #1

declare dso_local i32 @git_buf_cstr(i32) #1

declare dso_local i32 @git_buf_truncate(i32, i64) #1

declare dso_local i32 @git_config_delete_entry(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
