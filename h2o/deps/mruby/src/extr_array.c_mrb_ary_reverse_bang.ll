; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/src/extr_array.c_mrb_ary_reverse_bang.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/src/extr_array.c_mrb_ary_reverse_bang.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RArray = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*)* @mrb_ary_reverse_bang to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mrb_ary_reverse_bang(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.RArray*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call %struct.RArray* @mrb_ary_ptr(i8* %10)
  store %struct.RArray* %11, %struct.RArray** %5, align 8
  %12 = load %struct.RArray*, %struct.RArray** %5, align 8
  %13 = call i32 @ARY_LEN(%struct.RArray* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %42

16:                                               ; preds = %2
  %17 = load i32*, i32** %3, align 8
  %18 = load %struct.RArray*, %struct.RArray** %5, align 8
  %19 = call i32 @ary_modify(i32* %17, %struct.RArray* %18)
  %20 = load %struct.RArray*, %struct.RArray** %5, align 8
  %21 = call i8** @ARY_PTR(%struct.RArray* %20)
  store i8** %21, i8*** %7, align 8
  %22 = load i8**, i8*** %7, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  %26 = getelementptr inbounds i8*, i8** %25, i64 -1
  store i8** %26, i8*** %8, align 8
  br label %27

27:                                               ; preds = %31, %16
  %28 = load i8**, i8*** %7, align 8
  %29 = load i8**, i8*** %8, align 8
  %30 = icmp ult i8** %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load i8**, i8*** %7, align 8
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %9, align 8
  %34 = load i8**, i8*** %8, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = load i8**, i8*** %7, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i32 1
  store i8** %37, i8*** %7, align 8
  store i8* %35, i8** %36, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = load i8**, i8*** %8, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i32 -1
  store i8** %40, i8*** %8, align 8
  store i8* %38, i8** %39, align 8
  br label %27

41:                                               ; preds = %27
  br label %42

42:                                               ; preds = %41, %2
  %43 = load i8*, i8** %4, align 8
  ret i8* %43
}

declare dso_local %struct.RArray* @mrb_ary_ptr(i8*) #1

declare dso_local i32 @ARY_LEN(%struct.RArray*) #1

declare dso_local i32 @ary_modify(i32*, %struct.RArray*) #1

declare dso_local i8** @ARY_PTR(%struct.RArray*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
