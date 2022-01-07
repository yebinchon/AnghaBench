; ModuleID = '/home/carl/AnghaBench/git/extr_refs.c_warn_if_dangling_symref.c'
source_filename = "/home/carl/AnghaBench/git/extr_refs.c_warn_if_dangling_symref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.warn_if_dangling_data = type { i8*, i32, i32, i64 }

@REF_ISSYMREF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.object_id*, i32, i8*)* @warn_if_dangling_symref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @warn_if_dangling_symref(i8* %0, %struct.object_id* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.warn_if_dangling_data*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.object_id* %1, %struct.object_id** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = bitcast i8* %12 to %struct.warn_if_dangling_data*
  store %struct.warn_if_dangling_data* %13, %struct.warn_if_dangling_data** %10, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @REF_ISSYMREF, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %57

19:                                               ; preds = %4
  %20 = load i8*, i8** %6, align 8
  %21 = call i8* @resolve_ref_unsafe(i8* %20, i32 0, i32* null, i32* null)
  store i8* %21, i8** %11, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %43

24:                                               ; preds = %19
  %25 = load %struct.warn_if_dangling_data*, %struct.warn_if_dangling_data** %10, align 8
  %26 = getelementptr inbounds %struct.warn_if_dangling_data, %struct.warn_if_dangling_data* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load i8*, i8** %11, align 8
  %31 = load %struct.warn_if_dangling_data*, %struct.warn_if_dangling_data** %10, align 8
  %32 = getelementptr inbounds %struct.warn_if_dangling_data, %struct.warn_if_dangling_data* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @strcmp(i8* %30, i64 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %44

36:                                               ; preds = %24
  %37 = load %struct.warn_if_dangling_data*, %struct.warn_if_dangling_data** %10, align 8
  %38 = getelementptr inbounds %struct.warn_if_dangling_data, %struct.warn_if_dangling_data* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %11, align 8
  %41 = call i32 @string_list_has_string(i32 %39, i8* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %36, %29, %19
  store i32 0, i32* %5, align 4
  br label %57

44:                                               ; preds = %36, %29
  %45 = load %struct.warn_if_dangling_data*, %struct.warn_if_dangling_data** %10, align 8
  %46 = getelementptr inbounds %struct.warn_if_dangling_data, %struct.warn_if_dangling_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.warn_if_dangling_data*, %struct.warn_if_dangling_data** %10, align 8
  %49 = getelementptr inbounds %struct.warn_if_dangling_data, %struct.warn_if_dangling_data* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @fprintf(i32 %47, i8* %50, i8* %51)
  %53 = load %struct.warn_if_dangling_data*, %struct.warn_if_dangling_data** %10, align 8
  %54 = getelementptr inbounds %struct.warn_if_dangling_data, %struct.warn_if_dangling_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @fputc(i8 signext 10, i32 %55)
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %44, %43, %18
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i8* @resolve_ref_unsafe(i8*, i32, i32*, i32*) #1

declare dso_local i32 @strcmp(i8*, i64) #1

declare dso_local i32 @string_list_has_string(i32, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @fputc(i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
