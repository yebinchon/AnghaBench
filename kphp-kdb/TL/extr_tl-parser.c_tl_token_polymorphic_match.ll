; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_token_polymorphic_match.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_token_polymorphic_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_token = type { %struct.tl_token*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_token_polymorphic_match(%struct.tl_token* %0, %struct.tl_token* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tl_token*, align 8
  %5 = alloca %struct.tl_token*, align 8
  store %struct.tl_token* %0, %struct.tl_token** %4, align 8
  store %struct.tl_token* %1, %struct.tl_token** %5, align 8
  %6 = load %struct.tl_token*, %struct.tl_token** %4, align 8
  %7 = icmp ne %struct.tl_token* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct.tl_token*, %struct.tl_token** %5, align 8
  %10 = icmp ne %struct.tl_token* %9, null
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi i1 [ false, %2 ], [ %10, %8 ]
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.tl_token*, %struct.tl_token** %4, align 8
  %16 = getelementptr inbounds %struct.tl_token, %struct.tl_token* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.tl_token*, %struct.tl_token** %5, align 8
  %19 = getelementptr inbounds %struct.tl_token, %struct.tl_token* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @strcmp(i32 %17, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %50

24:                                               ; preds = %11
  br label %25

25:                                               ; preds = %33, %24
  %26 = load %struct.tl_token*, %struct.tl_token** %4, align 8
  %27 = icmp ne %struct.tl_token* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load %struct.tl_token*, %struct.tl_token** %5, align 8
  %30 = icmp ne %struct.tl_token* %29, null
  br label %31

31:                                               ; preds = %28, %25
  %32 = phi i1 [ false, %25 ], [ %30, %28 ]
  br i1 %32, label %33, label %40

33:                                               ; preds = %31
  %34 = load %struct.tl_token*, %struct.tl_token** %4, align 8
  %35 = getelementptr inbounds %struct.tl_token, %struct.tl_token* %34, i32 0, i32 0
  %36 = load %struct.tl_token*, %struct.tl_token** %35, align 8
  store %struct.tl_token* %36, %struct.tl_token** %4, align 8
  %37 = load %struct.tl_token*, %struct.tl_token** %5, align 8
  %38 = getelementptr inbounds %struct.tl_token, %struct.tl_token* %37, i32 0, i32 0
  %39 = load %struct.tl_token*, %struct.tl_token** %38, align 8
  store %struct.tl_token* %39, %struct.tl_token** %5, align 8
  br label %25

40:                                               ; preds = %31
  %41 = load %struct.tl_token*, %struct.tl_token** %4, align 8
  %42 = icmp eq %struct.tl_token* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load %struct.tl_token*, %struct.tl_token** %5, align 8
  %45 = icmp eq %struct.tl_token* %44, null
  br label %46

46:                                               ; preds = %43, %40
  %47 = phi i1 [ false, %40 ], [ %45, %43 ]
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 1, i32 0
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %46, %23
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
