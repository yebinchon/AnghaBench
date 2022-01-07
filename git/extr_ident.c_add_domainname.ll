; ModuleID = '/home/carl/AnghaBench/git/extr_ident.c_add_domainname.c'
source_filename = "/home/carl/AnghaBench/git/extr_ident.c_add_domainname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@HOST_NAME_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"cannot get host name\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%s.(none)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*, i32*)* @add_domainname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_domainname(%struct.strbuf* %0, i32* %1) #0 {
  %3 = alloca %struct.strbuf*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.strbuf* %0, %struct.strbuf** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32, i32* @HOST_NAME_MAX, align 4
  %9 = add nsw i32 %8, 1
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = trunc i64 %10 to i32
  %14 = call i64 @xgethostname(i8* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = call i32 @warning_errno(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %19 = call i32 @strbuf_addstr(%struct.strbuf* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32*, i32** %4, align 8
  store i32 1, i32* %20, align 4
  store i32 1, i32* %7, align 4
  br label %37

21:                                               ; preds = %2
  %22 = call i64 @strchr(i8* %12, i8 signext 46)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %26 = call i32 @strbuf_addstr(%struct.strbuf* %25, i8* %12)
  br label %36

27:                                               ; preds = %21
  %28 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %29 = call i64 @canonical_name(i8* %12, %struct.strbuf* %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %33 = call i32 @strbuf_addf(%struct.strbuf* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %12)
  %34 = load i32*, i32** %4, align 8
  store i32 1, i32* %34, align 4
  br label %35

35:                                               ; preds = %31, %27
  br label %36

36:                                               ; preds = %35, %24
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %36, %16
  %38 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %38)
  %39 = load i32, i32* %7, align 4
  switch i32 %39, label %41 [
    i32 0, label %40
    i32 1, label %40
  ]

40:                                               ; preds = %37, %37
  ret void

41:                                               ; preds = %37
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @xgethostname(i8*, i32) #2

declare dso_local i32 @warning_errno(i8*) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i64 @strchr(i8*, i8 signext) #2

declare dso_local i64 @canonical_name(i8*, %struct.strbuf*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
