; ModuleID = '/home/carl/AnghaBench/kphp-kdb/isearch/extr_isearch-data.c_load_black_list.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/isearch/extr_isearch-data.c_load_black_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_BUFF = common dso_local global i32 0, align 4
@fd = common dso_local global i32* null, align 8
@buff = common dso_local global i8* null, align 8
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"black list read %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [85 x i8] c"error reading header from index file: read %d bytes instead of %d at position 0: %m\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"ADD %s\0A\00", align 1
@black_list = common dso_local global i32 0, align 4
@aho_black_list_size = common dso_local global i32 0, align 4
@aho_black_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @load_black_list(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = add nsw i32 %4, 1
  %6 = load i32, i32* @MAX_BUFF, align 4
  %7 = icmp slt i32 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load i32*, i32** @fd, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = load i8*, i8** @buff, align 8
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @read(i32 %12, i8* %13, i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* @verbosity, align 4
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i32, i32* @stderr, align 4
  %20 = load i32, i32* %2, align 4
  %21 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %18, %1
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %2, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load i32, i32* @stderr, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %2, align 4
  %30 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %26, %22
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %2, align 4
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load i8*, i8** @buff, align 8
  %38 = load i32, i32* %2, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  store i8 0, i8* %40, align 1
  %41 = load i32, i32* @verbosity, align 4
  %42 = icmp sgt i32 %41, 2
  br i1 %42, label %43, label %47

43:                                               ; preds = %31
  %44 = load i32, i32* @stderr, align 4
  %45 = load i8*, i8** @buff, align 8
  %46 = call i32 (i32, i8*, ...) @fprintf(i32 %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %45)
  br label %47

47:                                               ; preds = %43, %31
  %48 = load i8*, i8** @buff, align 8
  %49 = call i32 @black_list_set_string(i8* %48, i32 0)
  %50 = load i32, i32* @black_list, align 4
  %51 = load i8*, i8** @buff, align 8
  %52 = call i32 @trie_encode(i32 %50, i8* %51, i32 0)
  store i32 %52, i32* @aho_black_list_size, align 4
  %53 = load i8*, i8** @buff, align 8
  %54 = bitcast i8* %53 to i32*
  %55 = call i32 @trie_arr_aho(i32* %54)
  %56 = load i32, i32* @aho_black_list_size, align 4
  %57 = call i32 @dl_malloc(i32 %56)
  store i32 %57, i32* @aho_black_list, align 4
  %58 = load i32, i32* @aho_black_list, align 4
  %59 = load i8*, i8** @buff, align 8
  %60 = load i32, i32* @aho_black_list_size, align 4
  %61 = call i32 @memcpy(i32 %58, i8* %59, i32 %60)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @black_list_set_string(i8*, i32) #1

declare dso_local i32 @trie_encode(i32, i8*, i32) #1

declare dso_local i32 @trie_arr_aho(i32*) #1

declare dso_local i32 @dl_malloc(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
