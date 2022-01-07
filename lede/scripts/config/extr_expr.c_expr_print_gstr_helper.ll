; ModuleID = '/home/carl/AnghaBench/lede/scripts/config/extr_expr.c_expr_print_gstr_helper.c'
source_filename = "/home/carl/AnghaBench/lede/scripts/config/extr_expr.c_expr_print_gstr_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i64 }
%struct.gstr = type { i32, i8* }

@.str = private unnamed_addr constant [3 x i8] c"\\\0A\00", align 1
@S_UNKNOWN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c" [=%s]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.symbol*, i8*)* @expr_print_gstr_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expr_print_gstr_helper(i8* %0, %struct.symbol* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.symbol*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.gstr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.symbol* %1, %struct.symbol** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.gstr*
  store %struct.gstr* %13, %struct.gstr** %7, align 8
  store i8* null, i8** %8, align 8
  %14 = load %struct.symbol*, %struct.symbol** %5, align 8
  %15 = icmp ne %struct.symbol* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.symbol*, %struct.symbol** %5, align 8
  %18 = call i8* @sym_get_string_value(%struct.symbol* %17)
  store i8* %18, i8** %8, align 8
  br label %19

19:                                               ; preds = %16, %3
  %20 = load %struct.gstr*, %struct.gstr** %7, align 8
  %21 = getelementptr inbounds %struct.gstr, %struct.gstr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %72

24:                                               ; preds = %19
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @strlen(i8* %25)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.gstr*, %struct.gstr** %7, align 8
  %28 = getelementptr inbounds %struct.gstr, %struct.gstr* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = call i8* @strrchr(i8* %29, i8 signext 10)
  store i8* %30, i8** %10, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %24
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @strlen(i8* %34)
  %36 = add nsw i32 4, %35
  %37 = load i32, i32* %9, align 4
  %38 = add i32 %37, %36
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %33, %24
  %40 = load i8*, i8** %10, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load %struct.gstr*, %struct.gstr** %7, align 8
  %44 = getelementptr inbounds %struct.gstr, %struct.gstr* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %10, align 8
  br label %46

46:                                               ; preds = %42, %39
  %47 = load %struct.gstr*, %struct.gstr** %7, align 8
  %48 = getelementptr inbounds %struct.gstr, %struct.gstr* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @strlen(i8* %49)
  %51 = sext i32 %50 to i64
  %52 = load i8*, i8** %10, align 8
  %53 = load %struct.gstr*, %struct.gstr** %7, align 8
  %54 = getelementptr inbounds %struct.gstr, %struct.gstr* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = ptrtoint i8* %52 to i64
  %57 = ptrtoint i8* %55 to i64
  %58 = sub i64 %56, %57
  %59 = sub nsw i64 %51, %58
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %9, align 4
  %63 = add i32 %61, %62
  %64 = load %struct.gstr*, %struct.gstr** %7, align 8
  %65 = getelementptr inbounds %struct.gstr, %struct.gstr* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ugt i32 %63, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %46
  %69 = load %struct.gstr*, %struct.gstr** %7, align 8
  %70 = call i32 @str_append(%struct.gstr* %69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %46
  br label %72

72:                                               ; preds = %71, %19
  %73 = load %struct.gstr*, %struct.gstr** %7, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = call i32 @str_append(%struct.gstr* %73, i8* %74)
  %76 = load %struct.symbol*, %struct.symbol** %5, align 8
  %77 = icmp ne %struct.symbol* %76, null
  br i1 %77, label %78, label %88

78:                                               ; preds = %72
  %79 = load %struct.symbol*, %struct.symbol** %5, align 8
  %80 = getelementptr inbounds %struct.symbol, %struct.symbol* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @S_UNKNOWN, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load %struct.gstr*, %struct.gstr** %7, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = call i32 @str_printf(%struct.gstr* %85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %86)
  br label %88

88:                                               ; preds = %84, %78, %72
  ret void
}

declare dso_local i8* @sym_get_string_value(%struct.symbol*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @str_append(%struct.gstr*, i8*) #1

declare dso_local i32 @str_printf(%struct.gstr*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
