; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_tlcomb_store_var_num.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_tlcomb_store_var_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_tree = type { i32 }

@TLUNI_NEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @tlcomb_store_var_num(i8** %0, i8** %1, i32** %2, %struct.tl_tree** %3) #0 {
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
  %12 = load i8**, i8*** %6, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i32 1
  store i8** %13, i8*** %6, align 8
  %14 = load i8*, i8** %12, align 8
  %15 = ptrtoint i8* %14 to i64
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %10, align 4
  %17 = load i32**, i32*** %8, align 8
  %18 = call i32 @parse_zend_long(i32** %17)
  store i32 %18, i32* %11, align 4
  %19 = load %struct.tl_tree**, %struct.tl_tree*** %9, align 8
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.tl_tree*, %struct.tl_tree** %19, i64 %21
  %23 = load %struct.tl_tree*, %struct.tl_tree** %22, align 8
  %24 = icmp ne %struct.tl_tree* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %4
  %26 = load %struct.tl_tree**, %struct.tl_tree*** %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.tl_tree*, %struct.tl_tree** %26, i64 %28
  %30 = load %struct.tl_tree*, %struct.tl_tree** %29, align 8
  %31 = call i32 @DEC_REF(%struct.tl_tree* %30)
  br label %32

32:                                               ; preds = %25, %4
  %33 = load i32, i32* %11, align 4
  %34 = call %struct.tl_tree* @int_to_var_nat_const(i32 %33)
  %35 = load %struct.tl_tree**, %struct.tl_tree*** %9, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.tl_tree*, %struct.tl_tree** %35, i64 %37
  store %struct.tl_tree* %34, %struct.tl_tree** %38, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @do_rpc_store_int(i32 %39)
  %41 = load i32, i32* @TLUNI_NEXT, align 4
  %42 = load i8*, i8** %5, align 8
  ret i8* %42
}

declare dso_local i32 @parse_zend_long(i32**) #1

declare dso_local i32 @DEC_REF(%struct.tl_tree*) #1

declare dso_local %struct.tl_tree* @int_to_var_nat_const(i32) #1

declare dso_local i32 @do_rpc_store_int(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
