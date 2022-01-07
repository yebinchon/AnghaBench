; ModuleID = '/home/carl/AnghaBench/git/extr_parse-options-cb.c_recreate_opt.c'
source_filename = "/home/carl/AnghaBench/git/extr_parse-options-cb.c_recreate_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.option = type { i8*, i8 }

@.str = private unnamed_addr constant [6 x i8] c"--no-\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.strbuf*, %struct.option*, i8*, i32)* @recreate_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recreate_opt(%struct.strbuf* %0, %struct.option* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca %struct.option*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.strbuf* %0, %struct.strbuf** %6, align 8
  store %struct.option* %1, %struct.option** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %11 = call i32 @strbuf_reset(%struct.strbuf* %10)
  %12 = load %struct.option*, %struct.option** %7, align 8
  %13 = getelementptr inbounds %struct.option, %struct.option* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %37

16:                                               ; preds = %4
  %17 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)
  %22 = call i32 @strbuf_addstr(%struct.strbuf* %17, i8* %21)
  %23 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %24 = load %struct.option*, %struct.option** %7, align 8
  %25 = getelementptr inbounds %struct.option, %struct.option* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @strbuf_addstr(%struct.strbuf* %23, i8* %26)
  %28 = load i8*, i8** %8, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %16
  %31 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %32 = call i32 @strbuf_addch(%struct.strbuf* %31, i8 signext 61)
  %33 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @strbuf_addstr(%struct.strbuf* %33, i8* %34)
  br label %36

36:                                               ; preds = %30, %16
  br label %63

37:                                               ; preds = %4
  %38 = load %struct.option*, %struct.option** %7, align 8
  %39 = getelementptr inbounds %struct.option, %struct.option* %38, i32 0, i32 1
  %40 = load i8, i8* %39, align 8
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %61

43:                                               ; preds = %37
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %61, label %46

46:                                               ; preds = %43
  %47 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %48 = call i32 @strbuf_addch(%struct.strbuf* %47, i8 signext 45)
  %49 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %50 = load %struct.option*, %struct.option** %7, align 8
  %51 = getelementptr inbounds %struct.option, %struct.option* %50, i32 0, i32 1
  %52 = load i8, i8* %51, align 8
  %53 = call i32 @strbuf_addch(%struct.strbuf* %49, i8 signext %52)
  %54 = load i8*, i8** %8, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %46
  %57 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 @strbuf_addstr(%struct.strbuf* %57, i8* %58)
  br label %60

60:                                               ; preds = %56, %46
  br label %62

61:                                               ; preds = %43, %37
  store i32 -1, i32* %5, align 4
  br label %64

62:                                               ; preds = %60
  br label %63

63:                                               ; preds = %62, %36
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %63, %61
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
