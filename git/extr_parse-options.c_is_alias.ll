; ModuleID = '/home/carl/AnghaBench/git/extr_parse-options.c_is_alias.c'
source_filename = "/home/carl/AnghaBench/git/extr_parse-options.c_is_alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_opt_ctx_t = type { i8** }
%struct.option = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parse_opt_ctx_t*, %struct.option*, %struct.option*)* @is_alias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_alias(%struct.parse_opt_ctx_t* %0, %struct.option* %1, %struct.option* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.parse_opt_ctx_t*, align 8
  %6 = alloca %struct.option*, align 8
  %7 = alloca %struct.option*, align 8
  %8 = alloca i8**, align 8
  store %struct.parse_opt_ctx_t* %0, %struct.parse_opt_ctx_t** %5, align 8
  store %struct.option* %1, %struct.option** %6, align 8
  store %struct.option* %2, %struct.option** %7, align 8
  %9 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %10 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %9, i32 0, i32 0
  %11 = load i8**, i8*** %10, align 8
  %12 = icmp ne i8** %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %53

14:                                               ; preds = %3
  %15 = load %struct.option*, %struct.option** %6, align 8
  %16 = getelementptr inbounds %struct.option, %struct.option* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.option*, %struct.option** %7, align 8
  %21 = getelementptr inbounds %struct.option, %struct.option* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19, %14
  store i32 0, i32* %4, align 4
  br label %53

25:                                               ; preds = %19
  %26 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %27 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %26, i32 0, i32 0
  %28 = load i8**, i8*** %27, align 8
  store i8** %28, i8*** %8, align 8
  br label %29

29:                                               ; preds = %49, %25
  %30 = load i8**, i8*** %8, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %52

33:                                               ; preds = %29
  %34 = load %struct.option*, %struct.option** %6, align 8
  %35 = getelementptr inbounds %struct.option, %struct.option* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i8**, i8*** %8, align 8
  %38 = call i64 @has_string(i32 %36, i8** %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %33
  %41 = load %struct.option*, %struct.option** %7, align 8
  %42 = getelementptr inbounds %struct.option, %struct.option* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i8**, i8*** %8, align 8
  %45 = call i64 @has_string(i32 %43, i8** %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store i32 1, i32* %4, align 4
  br label %53

48:                                               ; preds = %40, %33
  br label %49

49:                                               ; preds = %48
  %50 = load i8**, i8*** %8, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 3
  store i8** %51, i8*** %8, align 8
  br label %29

52:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %47, %24, %13
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i64 @has_string(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
