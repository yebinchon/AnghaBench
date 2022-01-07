; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_read_combinator_args_list.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_read_combinator_args_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_combinator = type { i32, i8*, i64, i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"c->id = %s, c->args_num = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_combinator_args_list(%struct.tl_combinator* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tl_combinator*, align 8
  store %struct.tl_combinator* %0, %struct.tl_combinator** %3, align 8
  %4 = call i32 (...) @tl_parse_int()
  %5 = load %struct.tl_combinator*, %struct.tl_combinator** %3, align 8
  %6 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %5, i32 0, i32 0
  store i32 %4, i32* %6, align 8
  %7 = load i32, i32* @verbosity, align 4
  %8 = icmp sge i32 %7, 2
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load i32, i32* @stderr, align 4
  %11 = load %struct.tl_combinator*, %struct.tl_combinator** %3, align 8
  %12 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %11, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  %14 = load %struct.tl_combinator*, %struct.tl_combinator** %3, align 8
  %15 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @fprintf(i32 %10, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %13, i32 %16)
  br label %18

18:                                               ; preds = %9, %1
  %19 = load %struct.tl_combinator*, %struct.tl_combinator** %3, align 8
  %20 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load %struct.tl_combinator*, %struct.tl_combinator** %3, align 8
  %25 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sgt i32 %26, 1000
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %18
  store i32 -1, i32* %2, align 4
  br label %57

29:                                               ; preds = %23
  %30 = load %struct.tl_combinator*, %struct.tl_combinator** %3, align 8
  %31 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = mul i64 8, %33
  %35 = trunc i64 %34 to i32
  %36 = call i32 @zzmalloc0(i32 %35)
  %37 = load %struct.tl_combinator*, %struct.tl_combinator** %3, align 8
  %38 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  %39 = load %struct.tl_combinator*, %struct.tl_combinator** %3, align 8
  %40 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %39, i32 0, i32 2
  store i64 0, i64* %40, align 8
  %41 = load %struct.tl_combinator*, %struct.tl_combinator** %3, align 8
  %42 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = mul i64 8, %44
  %46 = trunc i64 %45 to i32
  %47 = call i32 @ADD_PMALLOC(i32 %46)
  %48 = load %struct.tl_combinator*, %struct.tl_combinator** %3, align 8
  %49 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.tl_combinator*, %struct.tl_combinator** %3, align 8
  %52 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.tl_combinator*, %struct.tl_combinator** %3, align 8
  %55 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %54, i32 0, i32 2
  %56 = call i32 @read_args_list(i32 %50, i32 %53, i64* %55)
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %29, %28
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @tl_parse_int(...) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32) #1

declare dso_local i32 @zzmalloc0(i32) #1

declare dso_local i32 @ADD_PMALLOC(i32) #1

declare dso_local i32 @read_args_list(i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
