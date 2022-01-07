; ModuleID = '/home/carl/AnghaBench/git/extr_http-push.c_xml_start_tag.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-push.c_xml_start_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xml_ctx = type { i8*, i32, i32 (%struct.xml_ctx*, i32)*, i32 }

@.str = private unnamed_addr constant [4 x i8] c".%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8**)* @xml_start_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xml_start_tag(i8* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.xml_ctx*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8** %2, i8*** %6, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.xml_ctx*
  store %struct.xml_ctx* %12, %struct.xml_ctx** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i8* @strchr(i8* %13, i8 signext 58)
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  store i8* %18, i8** %8, align 8
  br label %22

19:                                               ; preds = %3
  %20 = load i8*, i8** %8, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %8, align 8
  br label %22

22:                                               ; preds = %19, %17
  %23 = load %struct.xml_ctx*, %struct.xml_ctx** %7, align 8
  %24 = getelementptr inbounds %struct.xml_ctx, %struct.xml_ctx* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @strlen(i8* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = add nsw i32 %27, %29
  %31 = add nsw i32 %30, 2
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.xml_ctx*, %struct.xml_ctx** %7, align 8
  %34 = getelementptr inbounds %struct.xml_ctx, %struct.xml_ctx* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp sgt i32 %32, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %22
  %38 = load %struct.xml_ctx*, %struct.xml_ctx** %7, align 8
  %39 = getelementptr inbounds %struct.xml_ctx, %struct.xml_ctx* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i8* @xrealloc(i8* %40, i32 %41)
  %43 = load %struct.xml_ctx*, %struct.xml_ctx** %7, align 8
  %44 = getelementptr inbounds %struct.xml_ctx, %struct.xml_ctx* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.xml_ctx*, %struct.xml_ctx** %7, align 8
  %47 = getelementptr inbounds %struct.xml_ctx, %struct.xml_ctx* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %37, %22
  %49 = load %struct.xml_ctx*, %struct.xml_ctx** %7, align 8
  %50 = getelementptr inbounds %struct.xml_ctx, %struct.xml_ctx* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load %struct.xml_ctx*, %struct.xml_ctx** %7, align 8
  %56 = getelementptr inbounds %struct.xml_ctx, %struct.xml_ctx* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sub nsw i32 %57, %58
  %60 = load i8*, i8** %8, align 8
  %61 = call i32 @xsnprintf(i8* %54, i32 %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %60)
  %62 = load %struct.xml_ctx*, %struct.xml_ctx** %7, align 8
  %63 = getelementptr inbounds %struct.xml_ctx, %struct.xml_ctx* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @FREE_AND_NULL(i32 %64)
  %66 = load %struct.xml_ctx*, %struct.xml_ctx** %7, align 8
  %67 = getelementptr inbounds %struct.xml_ctx, %struct.xml_ctx* %66, i32 0, i32 2
  %68 = load i32 (%struct.xml_ctx*, i32)*, i32 (%struct.xml_ctx*, i32)** %67, align 8
  %69 = load %struct.xml_ctx*, %struct.xml_ctx** %7, align 8
  %70 = call i32 %68(%struct.xml_ctx* %69, i32 0)
  ret void
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @xrealloc(i8*, i32) #1

declare dso_local i32 @xsnprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @FREE_AND_NULL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
