; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_resolver.c_parse_hosts.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_resolver.c_parse_hosts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resolver_conf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.resolver_conf*, i8*, i32)* @parse_hosts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_hosts(%struct.resolver_conf* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.resolver_conf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.resolver_conf* %0, %struct.resolver_conf** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %14 = load i8*, i8** %5, align 8
  store i8* %14, i8** %7, align 8
  br label %15

15:                                               ; preds = %90, %3
  %16 = load i8*, i8** %7, align 8
  %17 = load i8, i8* %16, align 1
  %18 = icmp ne i8 %17, 0
  br i1 %18, label %19, label %93

19:                                               ; preds = %15
  %20 = load i8*, i8** %7, align 8
  %21 = call i8* @skipspc(i8* %20)
  store i8* %21, i8** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %45, %19
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 4
  br i1 %24, label %25, label %48

25:                                               ; preds = %22
  %26 = call i32 @readbyte(i8** %7)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %48

30:                                               ; preds = %25
  %31 = load i32, i32* %10, align 4
  %32 = shl i32 %31, 8
  %33 = load i32, i32* %11, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %35, 3
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %7, align 8
  %40 = load i8, i8* %38, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 46
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %48

44:                                               ; preds = %37, %30
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %22

48:                                               ; preds = %43, %29, %22
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 4
  br i1 %50, label %64, label %51

51:                                               ; preds = %48
  %52 = load i8*, i8** %7, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 32
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load i8*, i8** %7, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 9
  br i1 %60, label %64, label %61

61:                                               ; preds = %56, %51
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %61, %56, %48
  br label %90

65:                                               ; preds = %61
  br label %66

66:                                               ; preds = %86, %65
  %67 = call i8* @getword(i8** %7, i32* %13)
  store i8* %67, i8** %12, align 8
  %68 = load i8*, i8** %12, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %85

70:                                               ; preds = %66
  %71 = load i32, i32* %13, align 4
  %72 = icmp slt i32 %71, 128
  br i1 %72, label %73, label %85

73:                                               ; preds = %70
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = load %struct.resolver_conf*, %struct.resolver_conf** %4, align 8
  %78 = load i8*, i8** %12, align 8
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @getHash(%struct.resolver_conf* %77, i8* %78, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %76, %73
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %82, %70, %66
  br label %86

86:                                               ; preds = %85
  %87 = load i8*, i8** %12, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %66, label %89

89:                                               ; preds = %86
  br label %90

90:                                               ; preds = %89, %64
  %91 = load i8*, i8** %7, align 8
  %92 = call i8* @skiptoeoln(i8* %91)
  store i8* %92, i8** %7, align 8
  br label %15

93:                                               ; preds = %15
  %94 = load i32, i32* %8, align 4
  ret i32 %94
}

declare dso_local i8* @skipspc(i8*) #1

declare dso_local i32 @readbyte(i8**) #1

declare dso_local i8* @getword(i8**, i32*) #1

declare dso_local i32 @getHash(%struct.resolver_conf*, i8*, i32, i32) #1

declare dso_local i8* @skiptoeoln(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
