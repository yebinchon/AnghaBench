; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-env/src/extr_env.c_mrb_env_to_a.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-env/src/extr_env.c_mrb_env_to_a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@environ = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_env_to_a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_env_to_a(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @mrb_ary_new(i32* %11)
  store i32 %12, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %73, %2
  %14 = load i8**, i8*** @environ, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8*, i8** %14, i64 %16
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %76

20:                                               ; preds = %13
  %21 = load i8**, i8*** @environ, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = call i8* @strchr(i8* %25, i8 signext 61)
  store i8* %26, i8** %7, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %72

29:                                               ; preds = %20
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @mrb_gc_arena_save(i32* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @mrb_ary_new(i32* %32)
  store i32 %33, i32* %9, align 4
  %34 = load i8*, i8** %7, align 8
  %35 = load i8**, i8*** @environ, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = ptrtoint i8* %34 to i64
  %41 = ptrtoint i8* %39 to i64
  %42 = sub i64 %40, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %10, align 4
  %44 = load i32*, i32** %3, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32*, i32** %3, align 8
  %47 = load i8**, i8*** @environ, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @mrb_str_new(i32* %46, i8* %51, i32 %52)
  %54 = call i32 @mrb_ary_push(i32* %44, i32 %45, i32 %53)
  %55 = load i8*, i8** %7, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %7, align 8
  %57 = load i32*, i32** %3, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i32*, i32** %3, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @strlen(i8* %61)
  %63 = call i32 @mrb_str_new(i32* %59, i8* %60, i32 %62)
  %64 = call i32 @mrb_ary_push(i32* %57, i32 %58, i32 %63)
  %65 = load i32*, i32** %3, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @mrb_ary_push(i32* %65, i32 %66, i32 %67)
  %69 = load i32*, i32** %3, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @mrb_gc_arena_restore(i32* %69, i32 %70)
  br label %72

72:                                               ; preds = %29, %20
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %13

76:                                               ; preds = %13
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local i32 @mrb_ary_new(i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @mrb_gc_arena_save(i32*) #1

declare dso_local i32 @mrb_ary_push(i32*, i32, i32) #1

declare dso_local i32 @mrb_str_new(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @mrb_gc_arena_restore(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
