; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_tlcomb_fetch_var_num.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_tlcomb_fetch_var_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_tree = type { i32 }

@TLUNI_NEXT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @tlcomb_fetch_var_num(i8** %0, i8** %1, i32** %2, %struct.tl_tree** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca %struct.tl_tree**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32** %2, i32*** %8, align 8
  store %struct.tl_tree** %3, %struct.tl_tree*** %9, align 8
  %12 = call i32 (...) @tl_parse_int()
  store i32 %12, i32* %10, align 4
  %13 = call i64 (...) @tl_parse_error()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %50

16:                                               ; preds = %4
  %17 = load i32**, i32*** %8, align 8
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @MAKE_STD_ZVAL(i32* %18)
  %20 = load i32**, i32*** %8, align 8
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @ZVAL_LONG(i32* %21, i32 %22)
  %24 = load i8**, i8*** %6, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i32 1
  store i8** %25, i8*** %6, align 8
  %26 = load i8*, i8** %24, align 8
  %27 = ptrtoint i8* %26 to i64
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %11, align 4
  %29 = load %struct.tl_tree**, %struct.tl_tree*** %9, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.tl_tree*, %struct.tl_tree** %29, i64 %31
  %33 = load %struct.tl_tree*, %struct.tl_tree** %32, align 8
  %34 = icmp ne %struct.tl_tree* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %16
  %36 = load %struct.tl_tree**, %struct.tl_tree*** %9, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.tl_tree*, %struct.tl_tree** %36, i64 %38
  %40 = load %struct.tl_tree*, %struct.tl_tree** %39, align 8
  %41 = call i32 @DEC_REF(%struct.tl_tree* %40)
  br label %42

42:                                               ; preds = %35, %16
  %43 = load i32, i32* %10, align 4
  %44 = call %struct.tl_tree* @int_to_var_nat_const(i32 %43)
  %45 = load %struct.tl_tree**, %struct.tl_tree*** %9, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.tl_tree*, %struct.tl_tree** %45, i64 %47
  store %struct.tl_tree* %44, %struct.tl_tree** %48, align 8
  %49 = load i32, i32* @TLUNI_NEXT, align 4
  br label %50

50:                                               ; preds = %42, %15
  %51 = load i8*, i8** %5, align 8
  ret i8* %51
}

declare dso_local i32 @tl_parse_int(...) #1

declare dso_local i64 @tl_parse_error(...) #1

declare dso_local i32 @MAKE_STD_ZVAL(i32*) #1

declare dso_local i32 @ZVAL_LONG(i32*, i32) #1

declare dso_local i32 @DEC_REF(%struct.tl_tree*) #1

declare dso_local %struct.tl_tree* @int_to_var_nat_const(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
