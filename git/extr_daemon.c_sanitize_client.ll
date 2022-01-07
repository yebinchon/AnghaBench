; ModuleID = '/home/carl/AnghaBench/git/extr_daemon.c_sanitize_client.c'
source_filename = "/home/carl/AnghaBench/git/extr_daemon.c_sanitize_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*, i8*)* @sanitize_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sanitize_client(%struct.strbuf* %0, i8* %1) #0 {
  %3 = alloca %struct.strbuf*, align 8
  %4 = alloca i8*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %3, align 8
  store i8* %1, i8** %4, align 8
  br label %5

5:                                                ; preds = %44, %2
  %6 = load i8*, i8** %4, align 8
  %7 = load i8, i8* %6, align 1
  %8 = icmp ne i8 %7, 0
  br i1 %8, label %9, label %47

9:                                                ; preds = %5
  %10 = load i8*, i8** %4, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 47
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  br label %44

15:                                               ; preds = %9
  %16 = load i8*, i8** %4, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 46
  br i1 %19, label %20, label %39

20:                                               ; preds = %15
  %21 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %22 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %20
  %26 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %27 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %30 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %28, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 46
  br i1 %37, label %38, label %39

38:                                               ; preds = %25, %20
  br label %44

39:                                               ; preds = %25, %15
  %40 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = load i8, i8* %41, align 1
  %43 = call i32 @strbuf_addch(%struct.strbuf* %40, i8 signext %42)
  br label %44

44:                                               ; preds = %39, %38, %14
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %4, align 8
  br label %5

47:                                               ; preds = %5
  br label %48

48:                                               ; preds = %68, %47
  %49 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %50 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %48
  %54 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %55 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %58 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %56, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 46
  br label %66

66:                                               ; preds = %53, %48
  %67 = phi i1 [ false, %48 ], [ %65, %53 ]
  br i1 %67, label %68, label %75

68:                                               ; preds = %66
  %69 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %70 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %71 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sub nsw i32 %72, 1
  %74 = call i32 @strbuf_setlen(%struct.strbuf* %69, i32 %73)
  br label %48

75:                                               ; preds = %66
  ret void
}

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
