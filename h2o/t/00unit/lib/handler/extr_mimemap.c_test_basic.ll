; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_mimemap.c_test_basic.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_mimemap.c_test_basic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"default-attributes\00", align 1
@test_default_attributes = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"application/octet-stream\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"text/plain\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"example/foo\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"FOO\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"example/overwritten\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_basic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_basic() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca [11 x i8], align 1
  %4 = call i32* (...) @h2o_mimemap_create()
  store i32* %4, i32** %1, align 8
  %5 = load i32, i32* @test_default_attributes, align 4
  %6 = call i32 @subtest(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load i32*, i32** %1, align 8
  %8 = call i32* @h2o_mimemap_get_default_type(i32* %7)
  %9 = call i32 @is_mimetype(i32* %8, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %10 = call i32 @ok(i32 %9)
  %11 = getelementptr inbounds [11 x i8], [11 x i8]* %3, i64 0, i64 0
  %12 = call i32 @strcpy(i8* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %13 = load i32*, i32** %1, align 8
  %14 = getelementptr inbounds [11 x i8], [11 x i8]* %3, i64 0, i64 0
  %15 = call i32 @h2o_mimemap_set_default_type(i32* %13, i8* %14, i32* null)
  %16 = getelementptr inbounds [11 x i8], [11 x i8]* %3, i64 0, i64 0
  %17 = call i32 @memset(i8* %16, i32 0, i32 11)
  %18 = load i32*, i32** %1, align 8
  %19 = call i32* @h2o_mimemap_get_default_type(i32* %18)
  %20 = call i32 @is_mimetype(i32* %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %21 = call i32 @ok(i32 %20)
  %22 = load i32*, i32** %1, align 8
  %23 = call i32 @h2o_mimemap_define_mimetype(i32* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32* null)
  %24 = load i32*, i32** %1, align 8
  %25 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %26 = call i32 @h2o_iovec_init(i32 %25)
  %27 = call i32* @h2o_mimemap_get_type_by_extension(i32* %24, i32 %26)
  %28 = call i32 @is_mimetype(i32* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %29 = call i32 @ok(i32 %28)
  %30 = load i32*, i32** %1, align 8
  %31 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %32 = call i32 @h2o_iovec_init(i32 %31)
  %33 = call i32* @h2o_mimemap_get_type_by_extension(i32* %30, i32 %32)
  %34 = call i32 @is_mimetype(i32* %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %35 = call i32 @ok(i32 %34)
  %36 = load i32*, i32** %1, align 8
  %37 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %38 = call i32 @h2o_iovec_init(i32 %37)
  %39 = call i32* @h2o_mimemap_get_type_by_extension(i32* %36, i32 %38)
  %40 = load i32*, i32** %1, align 8
  %41 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %42 = call i32 @h2o_iovec_init(i32 %41)
  %43 = call i32* @h2o_mimemap_get_type_by_mimetype(i32* %40, i32 %42, i32 0)
  %44 = icmp eq i32* %39, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @ok(i32 %45)
  %47 = load i32*, i32** %1, align 8
  %48 = call i32 @h2o_mimemap_define_mimetype(i32* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32* null)
  %49 = load i32*, i32** %1, align 8
  %50 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %51 = call i32 @h2o_iovec_init(i32 %50)
  %52 = call i32* @h2o_mimemap_get_type_by_extension(i32* %49, i32 %51)
  %53 = call i32 @is_mimetype(i32* %52, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %54 = call i32 @ok(i32 %53)
  %55 = load i32*, i32** %1, align 8
  %56 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %57 = call i32 @h2o_iovec_init(i32 %56)
  %58 = call i32* @h2o_mimemap_get_type_by_extension(i32* %55, i32 %57)
  %59 = load i32*, i32** %1, align 8
  %60 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %61 = call i32 @h2o_iovec_init(i32 %60)
  %62 = call i32* @h2o_mimemap_get_type_by_mimetype(i32* %59, i32 %61, i32 0)
  %63 = icmp eq i32* %58, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @ok(i32 %64)
  %66 = load i32*, i32** %1, align 8
  %67 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %68 = call i32 @h2o_iovec_init(i32 %67)
  %69 = call i32* @h2o_mimemap_get_type_by_mimetype(i32* %66, i32 %68, i32 0)
  %70 = icmp eq i32* %69, null
  %71 = zext i1 %70 to i32
  %72 = call i32 @ok(i32 %71)
  %73 = load i32*, i32** %1, align 8
  %74 = call i32* @h2o_mimemap_clone(i32* %73)
  store i32* %74, i32** %2, align 8
  %75 = load i32*, i32** %2, align 8
  %76 = call i32* @h2o_mimemap_get_default_type(i32* %75)
  %77 = call i32 @is_mimetype(i32* %76, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %78 = call i32 @ok(i32 %77)
  %79 = load i32*, i32** %2, align 8
  %80 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %81 = call i32 @h2o_iovec_init(i32 %80)
  %82 = call i32* @h2o_mimemap_get_type_by_extension(i32* %79, i32 %81)
  %83 = call i32 @is_mimetype(i32* %82, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %84 = call i32 @ok(i32 %83)
  %85 = load i32*, i32** %1, align 8
  %86 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %87 = call i32 @h2o_iovec_init(i32 %86)
  %88 = call i32* @h2o_mimemap_get_type_by_extension(i32* %85, i32 %87)
  %89 = load i32*, i32** %1, align 8
  %90 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %91 = call i32 @h2o_iovec_init(i32 %90)
  %92 = call i32* @h2o_mimemap_get_type_by_mimetype(i32* %89, i32 %91, i32 0)
  %93 = icmp eq i32* %88, %92
  %94 = zext i1 %93 to i32
  %95 = call i32 @ok(i32 %94)
  %96 = load i32*, i32** %2, align 8
  %97 = call i32 @h2o_mem_release_shared(i32* %96)
  %98 = load i32*, i32** %1, align 8
  %99 = call i32* @h2o_mimemap_get_default_type(i32* %98)
  %100 = call i32 @is_mimetype(i32* %99, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %101 = call i32 @ok(i32 %100)
  %102 = load i32*, i32** %1, align 8
  %103 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %104 = call i32 @h2o_iovec_init(i32 %103)
  %105 = call i32* @h2o_mimemap_get_type_by_extension(i32* %102, i32 %104)
  %106 = call i32 @is_mimetype(i32* %105, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %107 = call i32 @ok(i32 %106)
  %108 = load i32*, i32** %1, align 8
  %109 = call i32 @h2o_mimemap_remove_type(i32* %108, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %110 = load i32*, i32** %1, align 8
  %111 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %112 = call i32 @h2o_iovec_init(i32 %111)
  %113 = call i32* @h2o_mimemap_get_type_by_extension(i32* %110, i32 %112)
  %114 = call i32 @is_mimetype(i32* %113, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %115 = call i32 @ok(i32 %114)
  %116 = load i32*, i32** %1, align 8
  %117 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %118 = call i32 @h2o_iovec_init(i32 %117)
  %119 = call i32* @h2o_mimemap_get_type_by_mimetype(i32* %116, i32 %118, i32 0)
  %120 = icmp eq i32* %119, null
  %121 = zext i1 %120 to i32
  %122 = call i32 @ok(i32 %121)
  %123 = load i32*, i32** %1, align 8
  %124 = call i32 @h2o_mimemap_remove_type(i32* %123, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %125 = load i32*, i32** %1, align 8
  %126 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %127 = call i32 @h2o_iovec_init(i32 %126)
  %128 = call i32* @h2o_mimemap_get_type_by_extension(i32* %125, i32 %127)
  %129 = call i32 @is_mimetype(i32* %128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %130 = call i32 @ok(i32 %129)
  %131 = load i32*, i32** %1, align 8
  %132 = call i32 @h2o_mem_release_shared(i32* %131)
  ret void
}

declare dso_local i32* @h2o_mimemap_create(...) #1

declare dso_local i32 @subtest(i8*, i32) #1

declare dso_local i32 @ok(i32) #1

declare dso_local i32 @is_mimetype(i32*, i8*) #1

declare dso_local i32* @h2o_mimemap_get_default_type(i32*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @h2o_mimemap_set_default_type(i32*, i8*, i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @h2o_mimemap_define_mimetype(i32*, i8*, i8*, i32*) #1

declare dso_local i32* @h2o_mimemap_get_type_by_extension(i32*, i32) #1

declare dso_local i32 @h2o_iovec_init(i32) #1

declare dso_local i32 @H2O_STRLIT(i8*) #1

declare dso_local i32* @h2o_mimemap_get_type_by_mimetype(i32*, i32, i32) #1

declare dso_local i32* @h2o_mimemap_clone(i32*) #1

declare dso_local i32 @h2o_mem_release_shared(i32*) #1

declare dso_local i32 @h2o_mimemap_remove_type(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
