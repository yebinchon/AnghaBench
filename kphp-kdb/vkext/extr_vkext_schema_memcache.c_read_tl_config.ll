; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_read_tl_config.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_read_tl_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDONLY = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@MAX_TL_CONFIG_SIZE = common dso_local global i64 0, align 8
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"File found. Name %s. size = %lld\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@tl_config_name = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_tl_config(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = load i32, i32* @O_RDONLY, align 4
  %10 = call i32 @open(i8* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %69

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @SEEK_END, align 4
  %17 = call i64 @lseek(i32 %15, i32 0, i32 %16)
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 -1, i32* %2, align 4
  br label %69

21:                                               ; preds = %14
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @MAX_TL_CONFIG_SIZE, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 -1, i32* %2, align 4
  br label %69

26:                                               ; preds = %21
  %27 = load i32, i32* @verbosity, align 4
  %28 = icmp sge i32 %27, 2
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i32, i32* @stderr, align 4
  %31 = load i8*, i8** %3, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @fprintf(i32 %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %31, i64 %32)
  br label %34

34:                                               ; preds = %29, %26
  %35 = load i64, i64* %5, align 8
  %36 = call i8* @malloc(i64 %35)
  store i8* %36, i8** %6, align 8
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @SEEK_SET, align 4
  %39 = call i64 @lseek(i32 %37, i32 0, i32 %38)
  %40 = icmp eq i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load i32, i32* %4, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = load i64, i64* %5, align 8
  %46 = call i64 @read(i32 %43, i8* %44, i64 %45)
  %47 = load i64, i64* %5, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @close(i32 %51)
  %53 = load i8*, i8** %6, align 8
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @do_rpc_parse(i8* %53, i64 %54)
  %56 = call i32 (...) @renew_tl_config()
  store i32 %56, i32* %7, align 4
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @free(i8* %57)
  %59 = load i32, i32* %7, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %34
  %62 = load i8*, i8** %3, align 8
  %63 = call i32 @zzstrdup(i8* %62)
  store i32 %63, i32* @tl_config_name, align 4
  %64 = load i32, i32* @tl_config_name, align 4
  %65 = call i32 @strlen(i32 %64)
  %66 = call i32 @ADD_PMALLOC(i32 %65)
  br label %67

67:                                               ; preds = %61, %34
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %67, %25, %20, %13
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i64) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @read(i32, i8*, i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @do_rpc_parse(i8*, i64) #1

declare dso_local i32 @renew_tl_config(...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @zzstrdup(i8*) #1

declare dso_local i32 @ADD_PMALLOC(i32) #1

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
