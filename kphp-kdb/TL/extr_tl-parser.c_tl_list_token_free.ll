; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_list_token_free.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_list_token_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_token = type { i32, %struct.tl_token* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tl_list_token_free(%struct.tl_token* %0) #0 {
  %2 = alloca %struct.tl_token*, align 8
  %3 = alloca %struct.tl_token*, align 8
  %4 = alloca %struct.tl_token*, align 8
  store %struct.tl_token* %0, %struct.tl_token** %2, align 8
  %5 = load %struct.tl_token*, %struct.tl_token** %2, align 8
  store %struct.tl_token* %5, %struct.tl_token** %3, align 8
  br label %6

6:                                                ; preds = %18, %1
  %7 = load %struct.tl_token*, %struct.tl_token** %3, align 8
  %8 = icmp ne %struct.tl_token* %7, null
  br i1 %8, label %9, label %20

9:                                                ; preds = %6
  %10 = load %struct.tl_token*, %struct.tl_token** %3, align 8
  %11 = getelementptr inbounds %struct.tl_token, %struct.tl_token* %10, i32 0, i32 1
  %12 = load %struct.tl_token*, %struct.tl_token** %11, align 8
  store %struct.tl_token* %12, %struct.tl_token** %4, align 8
  %13 = load %struct.tl_token*, %struct.tl_token** %3, align 8
  %14 = getelementptr inbounds %struct.tl_token, %struct.tl_token* %13, i32 0, i32 0
  %15 = call i32 @cstr_free(i32* %14)
  %16 = load %struct.tl_token*, %struct.tl_token** %3, align 8
  %17 = call i32 @zfree(%struct.tl_token* %16, i32 16)
  br label %18

18:                                               ; preds = %9
  %19 = load %struct.tl_token*, %struct.tl_token** %4, align 8
  store %struct.tl_token* %19, %struct.tl_token** %3, align 8
  br label %6

20:                                               ; preds = %6
  ret void
}

declare dso_local i32 @cstr_free(i32*) #1

declare dso_local i32 @zfree(%struct.tl_token*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
