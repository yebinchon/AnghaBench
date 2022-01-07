; ModuleID = '/home/carl/AnghaBench/git/extr_trailer.c_same_token.c'
source_filename = "/home/carl/AnghaBench/git/extr_trailer.c_same_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trailer_item = type { i32 }
%struct.arg_item = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trailer_item*, %struct.arg_item*)* @same_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @same_token(%struct.trailer_item* %0, %struct.arg_item* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trailer_item*, align 8
  %5 = alloca %struct.arg_item*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.trailer_item* %0, %struct.trailer_item** %4, align 8
  store %struct.arg_item* %1, %struct.arg_item** %5, align 8
  %9 = load %struct.trailer_item*, %struct.trailer_item** %4, align 8
  %10 = getelementptr inbounds %struct.trailer_item, %struct.trailer_item* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %51

14:                                               ; preds = %2
  %15 = load %struct.trailer_item*, %struct.trailer_item** %4, align 8
  %16 = getelementptr inbounds %struct.trailer_item, %struct.trailer_item* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.trailer_item*, %struct.trailer_item** %4, align 8
  %19 = getelementptr inbounds %struct.trailer_item, %struct.trailer_item* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @strlen(i32 %20)
  %22 = call i64 @token_len_without_separator(i32 %17, i32 %21)
  store i64 %22, i64* %6, align 8
  %23 = load %struct.arg_item*, %struct.arg_item** %5, align 8
  %24 = getelementptr inbounds %struct.arg_item, %struct.arg_item* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.arg_item*, %struct.arg_item** %5, align 8
  %27 = getelementptr inbounds %struct.arg_item, %struct.arg_item* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @strlen(i32 %28)
  %30 = call i64 @token_len_without_separator(i32 %25, i32 %29)
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp ugt i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %14
  %35 = load i64, i64* %7, align 8
  br label %38

36:                                               ; preds = %14
  %37 = load i64, i64* %6, align 8
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i64 [ %35, %34 ], [ %37, %36 ]
  store i64 %39, i64* %8, align 8
  %40 = load %struct.trailer_item*, %struct.trailer_item** %4, align 8
  %41 = getelementptr inbounds %struct.trailer_item, %struct.trailer_item* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.arg_item*, %struct.arg_item** %5, align 8
  %44 = getelementptr inbounds %struct.arg_item, %struct.arg_item* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @strncasecmp(i32 %42, i32 %45, i64 %46)
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %38, %13
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @token_len_without_separator(i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @strncasecmp(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
