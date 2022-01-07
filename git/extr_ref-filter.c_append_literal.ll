; ModuleID = '/home/carl/AnghaBench/git/extr_ref-filter.c_append_literal.c'
source_filename = "/home/carl/AnghaBench/git/extr_ref-filter.c_append_literal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_formatting_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.strbuf }
%struct.strbuf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, %struct.ref_formatting_state*)* @append_literal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @append_literal(i8* %0, i8* %1, %struct.ref_formatting_state* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ref_formatting_state*, align 8
  %7 = alloca %struct.strbuf*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.ref_formatting_state* %2, %struct.ref_formatting_state** %6, align 8
  %9 = load %struct.ref_formatting_state*, %struct.ref_formatting_state** %6, align 8
  %10 = getelementptr inbounds %struct.ref_formatting_state, %struct.ref_formatting_state* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.strbuf* %12, %struct.strbuf** %7, align 8
  br label %13

13:                                               ; preds = %58, %49, %3
  %14 = load i8*, i8** %4, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %13
  %19 = load i8*, i8** %5, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i8*, i8** %4, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = icmp ult i8* %22, %23
  br label %25

25:                                               ; preds = %21, %18
  %26 = phi i1 [ true, %18 ], [ %24, %21 ]
  br label %27

27:                                               ; preds = %25, %13
  %28 = phi i1 [ false, %13 ], [ %26, %25 ]
  br i1 %28, label %29, label %65

29:                                               ; preds = %27
  %30 = load i8*, i8** %4, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 37
  br i1 %33, label %34, label %58

34:                                               ; preds = %29
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 37
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %4, align 8
  br label %57

43:                                               ; preds = %34
  %44 = load i8*, i8** %4, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = call i32 @hex2chr(i8* %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp sle i32 0, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = trunc i32 %51 to i8
  %53 = call i32 @strbuf_addch(%struct.strbuf* %50, i8 signext %52)
  %54 = load i8*, i8** %4, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 3
  store i8* %55, i8** %4, align 8
  br label %13

56:                                               ; preds = %43
  br label %57

57:                                               ; preds = %56, %40
  br label %58

58:                                               ; preds = %57, %29
  %59 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %60 = load i8*, i8** %4, align 8
  %61 = load i8, i8* %60, align 1
  %62 = call i32 @strbuf_addch(%struct.strbuf* %59, i8 signext %61)
  %63 = load i8*, i8** %4, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %4, align 8
  br label %13

65:                                               ; preds = %27
  ret void
}

declare dso_local i32 @hex2chr(i8*) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
