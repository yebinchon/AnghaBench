; ModuleID = '/home/carl/AnghaBench/git/extr_diff-no-index.c_append_basename.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff-no-index.c_append_basename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*, i8*, i8*)* @append_basename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @append_basename(%struct.strbuf* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = call i8* @strrchr(i8* %8, i8 signext 47)
  store i8* %9, i8** %7, align 8
  %10 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @strbuf_addstr(%struct.strbuf* %10, i8* %11)
  br label %13

13:                                               ; preds = %33, %3
  %14 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %15 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %13
  %19 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %20 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %23 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %21, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 47
  br label %31

31:                                               ; preds = %18, %13
  %32 = phi i1 [ false, %13 ], [ %30, %18 ]
  br i1 %32, label %33, label %38

33:                                               ; preds = %31
  %34 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %35 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %35, align 8
  br label %13

38:                                               ; preds = %31
  %39 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %40 = call i32 @strbuf_addch(%struct.strbuf* %39, i8 signext 47)
  %41 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i8*, i8** %7, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  br label %49

47:                                               ; preds = %38
  %48 = load i8*, i8** %6, align 8
  br label %49

49:                                               ; preds = %47, %44
  %50 = phi i8* [ %46, %44 ], [ %48, %47 ]
  %51 = call i32 @strbuf_addstr(%struct.strbuf* %41, i8* %50)
  ret void
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
