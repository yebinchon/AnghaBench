; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_get_field.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_get_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IS_ARRAY = common dso_local global i64 0, align 8
@FAILURE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32****** @get_field(i32***** %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32******, align 8
  %5 = alloca i32*****, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32******, align 8
  store i32***** %0, i32****** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = call i32 @ADD_CNT(i32****** (i32*****, i8*, i32)* @get_field)
  %10 = call i32 @START_TIMER(i32****** (i32*****, i8*, i32)* @get_field)
  %11 = load i32*****, i32****** %5, align 8
  %12 = bitcast i32***** %11 to i32******
  %13 = call i32 @assert(i32****** %12)
  %14 = load i32*****, i32****** %5, align 8
  %15 = call i64 @Z_TYPE_P(i32***** %14)
  %16 = load i64, i64* @IS_ARRAY, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = call i32 @END_TIMER(i32****** (i32*****, i8*, i32)* @get_field)
  store i32****** null, i32******* %4, align 8
  br label %58

20:                                               ; preds = %3
  store i32****** null, i32******* %8, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %43

23:                                               ; preds = %20
  %24 = load i8*, i8** %6, align 8
  %25 = call i64 @strlen(i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %23
  %28 = load i32*****, i32****** %5, align 8
  %29 = call i32 @Z_ARRVAL_P(i32***** %28)
  %30 = load i8*, i8** %6, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call i64 @strlen(i8* %31)
  %33 = add nsw i64 %32, 1
  %34 = bitcast i32******* %8 to i8**
  %35 = call i64 @zend_hash_find(i32 %29, i8* %30, i64 %33, i8** %34)
  %36 = load i64, i64* @FAILURE, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %27
  %39 = load i32******, i32******* %8, align 8
  %40 = call i32 @assert(i32****** %39)
  %41 = call i32 @END_TIMER(i32****** (i32*****, i8*, i32)* @get_field)
  %42 = load i32******, i32******* %8, align 8
  store i32****** %42, i32******* %4, align 8
  br label %58

43:                                               ; preds = %27, %23, %20
  %44 = load i32*****, i32****** %5, align 8
  %45 = call i32 @Z_ARRVAL_P(i32***** %44)
  %46 = load i32, i32* %7, align 4
  %47 = bitcast i32******* %8 to i8*
  %48 = call i64 @zend_hash_index_find(i32 %45, i32 %46, i8* %47)
  %49 = load i64, i64* @FAILURE, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %43
  %52 = load i32******, i32******* %8, align 8
  %53 = call i32 @assert(i32****** %52)
  %54 = call i32 @END_TIMER(i32****** (i32*****, i8*, i32)* @get_field)
  %55 = load i32******, i32******* %8, align 8
  store i32****** %55, i32******* %4, align 8
  br label %58

56:                                               ; preds = %43
  %57 = call i32 @END_TIMER(i32****** (i32*****, i8*, i32)* @get_field)
  store i32****** null, i32******* %4, align 8
  br label %58

58:                                               ; preds = %56, %51, %38, %18
  %59 = load i32******, i32******* %4, align 8
  ret i32****** %59
}

declare dso_local i32 @ADD_CNT(i32****** (i32*****, i8*, i32)*) #1

declare dso_local i32 @START_TIMER(i32****** (i32*****, i8*, i32)*) #1

declare dso_local i32 @assert(i32******) #1

declare dso_local i64 @Z_TYPE_P(i32*****) #1

declare dso_local i32 @END_TIMER(i32****** (i32*****, i8*, i32)*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @zend_hash_find(i32, i8*, i64, i8**) #1

declare dso_local i32 @Z_ARRVAL_P(i32*****) #1

declare dso_local i64 @zend_hash_index_find(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
