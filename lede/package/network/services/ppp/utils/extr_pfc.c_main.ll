; ModuleID = '/home/carl/AnghaBench/lede/package/network/services/ppp/utils/extr_pfc.c_main.c'
source_filename = "/home/carl/AnghaBench/lede/package/network/services/ppp/utils/extr_pfc.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_program = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"usage; %s [ -d <debug_level> ] expression\0A\00", align 1
@DLT_PPP_PPPD = common dso_local global i32 0, align 4
@PPP_HDRLEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"#\0A# Expression: %s\0A#\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"error in active-filter expression: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.bpf_program, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 3, i32* %9, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 4
  br i1 %11, label %12, label %28

12:                                               ; preds = %2
  %13 = load i8**, i8*** %5, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 1
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %12
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 2
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @atoi(i8* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 2
  store i8** %24, i8*** %5, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sub nsw i32 %25, 2
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %18, %12
  br label %28

28:                                               ; preds = %27, %2
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 2
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i8**, i8*** %5, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  store i32 1, i32* %3, align 4
  br label %59

36:                                               ; preds = %28
  %37 = load i32, i32* @DLT_PPP_PPPD, align 4
  %38 = load i32, i32* @PPP_HDRLEN, align 4
  %39 = call i32* @pcap_open_dead(i32 %37, i32 %38)
  store i32* %39, i32** %6, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load i8**, i8*** %5, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 1
  %43 = load i8*, i8** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i64 @pcap_compile(i32* %40, %struct.bpf_program* %7, i8* %43, i32 1, i32 %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %36
  %48 = load i8**, i8*** %5, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 1
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %50)
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @bpf_dump(%struct.bpf_program* %7, i32 %52)
  store i32 0, i32* %3, align 4
  br label %59

54:                                               ; preds = %36
  %55 = load i32*, i32** %6, align 8
  %56 = call i8* @pcap_geterr(i32* %55)
  %57 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %56)
  br label %58

58:                                               ; preds = %54
  store i32 1, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %47, %31
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32* @pcap_open_dead(i32, i32) #1

declare dso_local i64 @pcap_compile(i32*, %struct.bpf_program*, i8*, i32, i32) #1

declare dso_local i32 @bpf_dump(%struct.bpf_program*, i32) #1

declare dso_local i8* @pcap_geterr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
