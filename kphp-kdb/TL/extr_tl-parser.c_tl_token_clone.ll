; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_token_clone.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_token_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_token = type { %struct.tl_token*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tl_token* (%struct.tl_token*)* @tl_token_clone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tl_token* @tl_token_clone(%struct.tl_token* %0) #0 {
  %2 = alloca %struct.tl_token*, align 8
  %3 = alloca %struct.tl_token*, align 8
  %4 = alloca %struct.tl_token*, align 8
  store %struct.tl_token* %0, %struct.tl_token** %2, align 8
  store %struct.tl_token* null, %struct.tl_token** %3, align 8
  br label %5

5:                                                ; preds = %8, %1
  %6 = load %struct.tl_token*, %struct.tl_token** %2, align 8
  %7 = icmp ne %struct.tl_token* %6, null
  br i1 %7, label %8, label %23

8:                                                ; preds = %5
  %9 = call %struct.tl_token* @zmalloc0(i32 16)
  store %struct.tl_token* %9, %struct.tl_token** %4, align 8
  %10 = load %struct.tl_token*, %struct.tl_token** %2, align 8
  %11 = getelementptr inbounds %struct.tl_token, %struct.tl_token* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @cstr_dup(i32 %12)
  %14 = load %struct.tl_token*, %struct.tl_token** %4, align 8
  %15 = getelementptr inbounds %struct.tl_token, %struct.tl_token* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  %16 = load %struct.tl_token*, %struct.tl_token** %3, align 8
  %17 = load %struct.tl_token*, %struct.tl_token** %4, align 8
  %18 = getelementptr inbounds %struct.tl_token, %struct.tl_token* %17, i32 0, i32 0
  store %struct.tl_token* %16, %struct.tl_token** %18, align 8
  %19 = load %struct.tl_token*, %struct.tl_token** %4, align 8
  store %struct.tl_token* %19, %struct.tl_token** %3, align 8
  %20 = load %struct.tl_token*, %struct.tl_token** %2, align 8
  %21 = getelementptr inbounds %struct.tl_token, %struct.tl_token* %20, i32 0, i32 0
  %22 = load %struct.tl_token*, %struct.tl_token** %21, align 8
  store %struct.tl_token* %22, %struct.tl_token** %2, align 8
  br label %5

23:                                               ; preds = %5
  %24 = load %struct.tl_token*, %struct.tl_token** %3, align 8
  %25 = call %struct.tl_token* @list_token_reverse(%struct.tl_token* %24)
  ret %struct.tl_token* %25
}

declare dso_local %struct.tl_token* @zmalloc0(i32) #1

declare dso_local i32 @cstr_dup(i32) #1

declare dso_local %struct.tl_token* @list_token_reverse(%struct.tl_token*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
