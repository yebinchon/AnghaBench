; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-events.c_show_ipv6.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-events.c_show_ipv6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@show_ipv6.abuf = internal global [256 x i8] zeroinitializer, align 16
@show_ipv6.ptr = internal global i8* getelementptr inbounds ([256 x i8], [256 x i8]* @show_ipv6.abuf, i32 0, i32 0), align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @show_ipv6(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** @show_ipv6.ptr, align 8
  %5 = icmp ugt i8* %4, getelementptr inbounds ([256 x i8], [256 x i8]* @show_ipv6.abuf, i64 0, i64 200)
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @show_ipv6.abuf, i64 0, i64 0), i8** @show_ipv6.ptr, align 8
  br label %7

7:                                                ; preds = %6, %1
  %8 = load i8*, i8** @show_ipv6.ptr, align 8
  store i8* %8, i8** %3, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to i16*
  %11 = load i8*, i8** @show_ipv6.ptr, align 8
  %12 = call i64 @conv_ipv6_internal(i16* %10, i8* %11)
  %13 = add nsw i64 %12, 1
  %14 = load i8*, i8** @show_ipv6.ptr, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 %13
  store i8* %15, i8** @show_ipv6.ptr, align 8
  %16 = load i8*, i8** %3, align 8
  ret i8* %16
}

declare dso_local i64 @conv_ipv6_internal(i16*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
