; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_expression_expand.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_expression_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_expression = type { i64, i32, %struct.tl_token*, i32, %struct.tl_token* }
%struct.tl_token = type { i32, %struct.tl_token* }

@tlet_polymorphic = common dso_local global i64 0, align 8
@tlet_polymorphic_instance = common dso_local global i64 0, align 8
@tlet_simple = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tl_expression_expand(%struct.tl_expression* %0, %struct.tl_expression* %1) #0 {
  %3 = alloca %struct.tl_expression*, align 8
  %4 = alloca %struct.tl_expression*, align 8
  %5 = alloca %struct.tl_token*, align 8
  %6 = alloca %struct.tl_token*, align 8
  %7 = alloca %struct.tl_token*, align 8
  %8 = alloca %struct.tl_token*, align 8
  store %struct.tl_expression* %0, %struct.tl_expression** %3, align 8
  store %struct.tl_expression* %1, %struct.tl_expression** %4, align 8
  %9 = load %struct.tl_expression*, %struct.tl_expression** %4, align 8
  %10 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @tlet_polymorphic, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.tl_expression*, %struct.tl_expression** %3, align 8
  %17 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @tlet_polymorphic_instance, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.tl_expression*, %struct.tl_expression** %4, align 8
  %24 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %23, i32 0, i32 4
  %25 = load %struct.tl_token*, %struct.tl_token** %24, align 8
  %26 = call %struct.tl_token* @tl_token_clone(%struct.tl_token* %25)
  store %struct.tl_token* %26, %struct.tl_token** %5, align 8
  %27 = load %struct.tl_token*, %struct.tl_token** %5, align 8
  %28 = getelementptr inbounds %struct.tl_token, %struct.tl_token* %27, i32 0, i32 1
  %29 = load %struct.tl_token*, %struct.tl_token** %28, align 8
  store %struct.tl_token* %29, %struct.tl_token** %6, align 8
  br label %30

30:                                               ; preds = %75, %2
  %31 = load %struct.tl_token*, %struct.tl_token** %6, align 8
  %32 = icmp ne %struct.tl_token* %31, null
  br i1 %32, label %33, label %79

33:                                               ; preds = %30
  %34 = load %struct.tl_expression*, %struct.tl_expression** %4, align 8
  %35 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %34, i32 0, i32 2
  %36 = load %struct.tl_token*, %struct.tl_token** %35, align 8
  %37 = getelementptr inbounds %struct.tl_token, %struct.tl_token* %36, i32 0, i32 1
  %38 = load %struct.tl_token*, %struct.tl_token** %37, align 8
  store %struct.tl_token* %38, %struct.tl_token** %7, align 8
  %39 = load %struct.tl_expression*, %struct.tl_expression** %3, align 8
  %40 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %39, i32 0, i32 4
  %41 = load %struct.tl_token*, %struct.tl_token** %40, align 8
  %42 = getelementptr inbounds %struct.tl_token, %struct.tl_token* %41, i32 0, i32 1
  %43 = load %struct.tl_token*, %struct.tl_token** %42, align 8
  store %struct.tl_token* %43, %struct.tl_token** %8, align 8
  br label %44

44:                                               ; preds = %67, %33
  %45 = load %struct.tl_token*, %struct.tl_token** %7, align 8
  %46 = icmp ne %struct.tl_token* %45, null
  br i1 %46, label %47, label %74

47:                                               ; preds = %44
  %48 = load %struct.tl_token*, %struct.tl_token** %6, align 8
  %49 = getelementptr inbounds %struct.tl_token, %struct.tl_token* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.tl_token*, %struct.tl_token** %7, align 8
  %52 = getelementptr inbounds %struct.tl_token, %struct.tl_token* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @strcmp(i32 %50, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %47
  %57 = load %struct.tl_token*, %struct.tl_token** %6, align 8
  %58 = getelementptr inbounds %struct.tl_token, %struct.tl_token* %57, i32 0, i32 0
  %59 = call i32 @cstr_free(i32* %58)
  %60 = load %struct.tl_token*, %struct.tl_token** %8, align 8
  %61 = getelementptr inbounds %struct.tl_token, %struct.tl_token* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @cstr_dup(i32 %62)
  %64 = load %struct.tl_token*, %struct.tl_token** %6, align 8
  %65 = getelementptr inbounds %struct.tl_token, %struct.tl_token* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  br label %66

66:                                               ; preds = %56, %47
  br label %67

67:                                               ; preds = %66
  %68 = load %struct.tl_token*, %struct.tl_token** %7, align 8
  %69 = getelementptr inbounds %struct.tl_token, %struct.tl_token* %68, i32 0, i32 1
  %70 = load %struct.tl_token*, %struct.tl_token** %69, align 8
  store %struct.tl_token* %70, %struct.tl_token** %7, align 8
  %71 = load %struct.tl_token*, %struct.tl_token** %8, align 8
  %72 = getelementptr inbounds %struct.tl_token, %struct.tl_token* %71, i32 0, i32 1
  %73 = load %struct.tl_token*, %struct.tl_token** %72, align 8
  store %struct.tl_token* %73, %struct.tl_token** %8, align 8
  br label %44

74:                                               ; preds = %44
  br label %75

75:                                               ; preds = %74
  %76 = load %struct.tl_token*, %struct.tl_token** %6, align 8
  %77 = getelementptr inbounds %struct.tl_token, %struct.tl_token* %76, i32 0, i32 1
  %78 = load %struct.tl_token*, %struct.tl_token** %77, align 8
  store %struct.tl_token* %78, %struct.tl_token** %6, align 8
  br label %30

79:                                               ; preds = %30
  %80 = load %struct.tl_expression*, %struct.tl_expression** %3, align 8
  %81 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %80, i32 0, i32 4
  %82 = load %struct.tl_token*, %struct.tl_token** %81, align 8
  %83 = load %struct.tl_expression*, %struct.tl_expression** %3, align 8
  %84 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %83, i32 0, i32 2
  store %struct.tl_token* %82, %struct.tl_token** %84, align 8
  %85 = load %struct.tl_token*, %struct.tl_token** %5, align 8
  %86 = load %struct.tl_expression*, %struct.tl_expression** %3, align 8
  %87 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %86, i32 0, i32 4
  store %struct.tl_token* %85, %struct.tl_token** %87, align 8
  %88 = load i64, i64* @tlet_simple, align 8
  %89 = load %struct.tl_expression*, %struct.tl_expression** %3, align 8
  %90 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  %91 = load %struct.tl_expression*, %struct.tl_expression** %3, align 8
  %92 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %91, i32 0, i32 2
  %93 = load %struct.tl_token*, %struct.tl_token** %92, align 8
  %94 = call i32 @cstr_join_with_sugar(%struct.tl_token* %93)
  %95 = load %struct.tl_expression*, %struct.tl_expression** %3, align 8
  %96 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 8
  %97 = load %struct.tl_expression*, %struct.tl_expression** %3, align 8
  %98 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %97, i32 0, i32 1
  store i32 1, i32* %98, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.tl_token* @tl_token_clone(%struct.tl_token*) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @cstr_free(i32*) #1

declare dso_local i32 @cstr_dup(i32) #1

declare dso_local i32 @cstr_join_with_sugar(%struct.tl_token*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
