; ModuleID = '/home/carl/AnghaBench/git/extr_dir.c_do_read_blob.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir.c_do_read_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.oid_stat = type { i32, i32 }

@OBJ_BLOB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*, %struct.oid_stat*, i64*, i8**)* @do_read_blob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_read_blob(%struct.object_id* %0, %struct.oid_stat* %1, i64* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca %struct.oid_stat*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store %struct.object_id* %0, %struct.object_id** %6, align 8
  store %struct.oid_stat* %1, %struct.oid_stat** %7, align 8
  store i64* %2, i64** %8, align 8
  store i8** %3, i8*** %9, align 8
  %13 = load i64*, i64** %8, align 8
  store i64 0, i64* %13, align 8
  %14 = load i8**, i8*** %9, align 8
  store i8* null, i8** %14, align 8
  %15 = load %struct.object_id*, %struct.object_id** %6, align 8
  %16 = call i8* @read_object_file(%struct.object_id* %15, i32* %10, i64* %11)
  store i8* %16, i8** %12, align 8
  %17 = load i8*, i8** %12, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @OBJ_BLOB, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19, %4
  %24 = load i8*, i8** %12, align 8
  %25 = call i32 @free(i8* %24)
  store i32 -1, i32* %5, align 4
  br label %66

26:                                               ; preds = %19
  %27 = load %struct.oid_stat*, %struct.oid_stat** %7, align 8
  %28 = icmp ne %struct.oid_stat* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load %struct.oid_stat*, %struct.oid_stat** %7, align 8
  %31 = getelementptr inbounds %struct.oid_stat, %struct.oid_stat* %30, i32 0, i32 1
  %32 = call i32 @memset(i32* %31, i32 0, i32 4)
  %33 = load %struct.oid_stat*, %struct.oid_stat** %7, align 8
  %34 = getelementptr inbounds %struct.oid_stat, %struct.oid_stat* %33, i32 0, i32 0
  %35 = load %struct.object_id*, %struct.object_id** %6, align 8
  %36 = call i32 @oidcpy(i32* %34, %struct.object_id* %35)
  br label %37

37:                                               ; preds = %29, %26
  %38 = load i64, i64* %11, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i8*, i8** %12, align 8
  %42 = call i32 @free(i8* %41)
  store i32 0, i32* %5, align 4
  br label %66

43:                                               ; preds = %37
  %44 = load i8*, i8** %12, align 8
  %45 = load i64, i64* %11, align 8
  %46 = sub i64 %45, 1
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 10
  br i1 %50, label %51, label %60

51:                                               ; preds = %43
  %52 = load i8*, i8** %12, align 8
  %53 = load i64, i64* %11, align 8
  %54 = call i32 @st_add(i64 %53, i32 1)
  %55 = call i8* @xrealloc(i8* %52, i32 %54)
  store i8* %55, i8** %12, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = load i64, i64* %11, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %11, align 8
  %59 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8 10, i8* %59, align 1
  br label %60

60:                                               ; preds = %51, %43
  %61 = load i64, i64* %11, align 8
  %62 = call i64 @xsize_t(i64 %61)
  %63 = load i64*, i64** %8, align 8
  store i64 %62, i64* %63, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = load i8**, i8*** %9, align 8
  store i8* %64, i8** %65, align 8
  store i32 1, i32* %5, align 4
  br label %66

66:                                               ; preds = %60, %40, %23
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i8* @read_object_file(%struct.object_id*, i32*, i64*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @oidcpy(i32*, %struct.object_id*) #1

declare dso_local i8* @xrealloc(i8*, i32) #1

declare dso_local i32 @st_add(i64, i32) #1

declare dso_local i64 @xsize_t(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
