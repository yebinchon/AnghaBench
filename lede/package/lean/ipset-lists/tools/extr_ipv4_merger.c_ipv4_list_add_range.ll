; ModuleID = '/home/carl/AnghaBench/lede/package/lean/ipset-lists/tools/extr_ipv4_merger.c_ipv4_list_add_range.c'
source_filename = "/home/carl/AnghaBench/lede/package/lean/ipset-lists/tools/extr_ipv4_merger.c_ipv4_list_add_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa_open_data = type { i64, i64, %struct.ipv4_range* }
%struct.ipv4_range = type { i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sa_open_data*, i8*, i8*, i32)* @ipv4_list_add_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipv4_list_add_range(%struct.sa_open_data* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sa_open_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ipv4_range*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.ipv4_range*, align 8
  store %struct.sa_open_data* %0, %struct.sa_open_data** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.sa_open_data*, %struct.sa_open_data** %6, align 8
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @__touch_tmp_base(%struct.sa_open_data* %14, i32 %15)
  store i32 %16, i32* %11, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %5, align 4
  br label %81

20:                                               ; preds = %4
  %21 = load %struct.sa_open_data*, %struct.sa_open_data** %6, align 8
  %22 = getelementptr inbounds %struct.sa_open_data, %struct.sa_open_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add i64 %23, 1
  %25 = load %struct.sa_open_data*, %struct.sa_open_data** %6, align 8
  %26 = getelementptr inbounds %struct.sa_open_data, %struct.sa_open_data* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp uge i64 %24, %27
  br i1 %28, label %29, label %66

29:                                               ; preds = %20
  %30 = load %struct.sa_open_data*, %struct.sa_open_data** %6, align 8
  %31 = getelementptr inbounds %struct.sa_open_data, %struct.sa_open_data* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %12, align 8
  %33 = load %struct.sa_open_data*, %struct.sa_open_data** %6, align 8
  %34 = getelementptr inbounds %struct.sa_open_data, %struct.sa_open_data* %33, i32 0, i32 2
  %35 = load %struct.ipv4_range*, %struct.ipv4_range** %34, align 8
  store %struct.ipv4_range* %35, %struct.ipv4_range** %13, align 8
  %36 = load %struct.sa_open_data*, %struct.sa_open_data** %6, align 8
  %37 = getelementptr inbounds %struct.sa_open_data, %struct.sa_open_data* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = mul i64 %38, 2
  store i64 %39, i64* %37, align 8
  %40 = load %struct.sa_open_data*, %struct.sa_open_data** %6, align 8
  %41 = getelementptr inbounds %struct.sa_open_data, %struct.sa_open_data* %40, i32 0, i32 2
  %42 = load %struct.ipv4_range*, %struct.ipv4_range** %41, align 8
  %43 = load %struct.sa_open_data*, %struct.sa_open_data** %6, align 8
  %44 = getelementptr inbounds %struct.sa_open_data, %struct.sa_open_data* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = mul i64 16, %45
  %47 = trunc i64 %46 to i32
  %48 = call i64 @realloc(%struct.ipv4_range* %42, i32 %47)
  %49 = inttoptr i64 %48 to %struct.ipv4_range*
  %50 = load %struct.sa_open_data*, %struct.sa_open_data** %6, align 8
  %51 = getelementptr inbounds %struct.sa_open_data, %struct.sa_open_data* %50, i32 0, i32 2
  store %struct.ipv4_range* %49, %struct.ipv4_range** %51, align 8
  %52 = load %struct.sa_open_data*, %struct.sa_open_data** %6, align 8
  %53 = getelementptr inbounds %struct.sa_open_data, %struct.sa_open_data* %52, i32 0, i32 2
  %54 = load %struct.ipv4_range*, %struct.ipv4_range** %53, align 8
  %55 = icmp ne %struct.ipv4_range* %54, null
  br i1 %55, label %65, label %56

56:                                               ; preds = %29
  %57 = load i64, i64* %12, align 8
  %58 = load %struct.sa_open_data*, %struct.sa_open_data** %6, align 8
  %59 = getelementptr inbounds %struct.sa_open_data, %struct.sa_open_data* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  %60 = load %struct.ipv4_range*, %struct.ipv4_range** %13, align 8
  %61 = load %struct.sa_open_data*, %struct.sa_open_data** %6, align 8
  %62 = getelementptr inbounds %struct.sa_open_data, %struct.sa_open_data* %61, i32 0, i32 2
  store %struct.ipv4_range* %60, %struct.ipv4_range** %62, align 8
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %81

65:                                               ; preds = %29
  br label %66

66:                                               ; preds = %65, %20
  %67 = load %struct.sa_open_data*, %struct.sa_open_data** %6, align 8
  %68 = getelementptr inbounds %struct.sa_open_data, %struct.sa_open_data* %67, i32 0, i32 2
  %69 = load %struct.ipv4_range*, %struct.ipv4_range** %68, align 8
  %70 = load %struct.sa_open_data*, %struct.sa_open_data** %6, align 8
  %71 = getelementptr inbounds %struct.sa_open_data, %struct.sa_open_data* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %71, align 8
  %74 = getelementptr inbounds %struct.ipv4_range, %struct.ipv4_range* %69, i64 %72
  store %struct.ipv4_range* %74, %struct.ipv4_range** %10, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = load %struct.ipv4_range*, %struct.ipv4_range** %10, align 8
  %77 = getelementptr inbounds %struct.ipv4_range, %struct.ipv4_range* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = load %struct.ipv4_range*, %struct.ipv4_range** %10, align 8
  %80 = getelementptr inbounds %struct.ipv4_range, %struct.ipv4_range* %79, i32 0, i32 0
  store i8* %78, i8** %80, align 8
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %66, %56, %18
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i32 @__touch_tmp_base(%struct.sa_open_data*, i32) #1

declare dso_local i64 @realloc(%struct.ipv4_range*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
