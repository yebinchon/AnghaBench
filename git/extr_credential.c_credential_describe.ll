; ModuleID = '/home/carl/AnghaBench/git/extr_credential.c_credential_describe.c'
source_filename = "/home/carl/AnghaBench/git/extr_credential.c_credential_describe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.credential = type { i64*, i64, i64*, i64* }
%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%s://\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s@\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.credential*, %struct.strbuf*)* @credential_describe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @credential_describe(%struct.credential* %0, %struct.strbuf* %1) #0 {
  %3 = alloca %struct.credential*, align 8
  %4 = alloca %struct.strbuf*, align 8
  store %struct.credential* %0, %struct.credential** %3, align 8
  store %struct.strbuf* %1, %struct.strbuf** %4, align 8
  %5 = load %struct.credential*, %struct.credential** %3, align 8
  %6 = getelementptr inbounds %struct.credential, %struct.credential* %5, i32 0, i32 3
  %7 = load i64*, i64** %6, align 8
  %8 = icmp ne i64* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %54

10:                                               ; preds = %2
  %11 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %12 = load %struct.credential*, %struct.credential** %3, align 8
  %13 = getelementptr inbounds %struct.credential, %struct.credential* %12, i32 0, i32 3
  %14 = load i64*, i64** %13, align 8
  %15 = call i32 @strbuf_addf(%struct.strbuf* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64* %14)
  %16 = load %struct.credential*, %struct.credential** %3, align 8
  %17 = getelementptr inbounds %struct.credential, %struct.credential* %16, i32 0, i32 2
  %18 = load i64*, i64** %17, align 8
  %19 = icmp ne i64* %18, null
  br i1 %19, label %20, label %32

20:                                               ; preds = %10
  %21 = load %struct.credential*, %struct.credential** %3, align 8
  %22 = getelementptr inbounds %struct.credential, %struct.credential* %21, i32 0, i32 2
  %23 = load i64*, i64** %22, align 8
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %28 = load %struct.credential*, %struct.credential** %3, align 8
  %29 = getelementptr inbounds %struct.credential, %struct.credential* %28, i32 0, i32 2
  %30 = load i64*, i64** %29, align 8
  %31 = call i32 @strbuf_addf(%struct.strbuf* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64* %30)
  br label %32

32:                                               ; preds = %26, %20, %10
  %33 = load %struct.credential*, %struct.credential** %3, align 8
  %34 = getelementptr inbounds %struct.credential, %struct.credential* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %39 = load %struct.credential*, %struct.credential** %3, align 8
  %40 = getelementptr inbounds %struct.credential, %struct.credential* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @strbuf_addstr(%struct.strbuf* %38, i64 %41)
  br label %43

43:                                               ; preds = %37, %32
  %44 = load %struct.credential*, %struct.credential** %3, align 8
  %45 = getelementptr inbounds %struct.credential, %struct.credential* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = icmp ne i64* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %50 = load %struct.credential*, %struct.credential** %3, align 8
  %51 = getelementptr inbounds %struct.credential, %struct.credential* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = call i32 @strbuf_addf(%struct.strbuf* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64* %52)
  br label %54

54:                                               ; preds = %9, %48, %43
  ret void
}

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i64*) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
