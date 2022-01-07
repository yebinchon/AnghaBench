; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_gwsocket.c_send_holder_to_client.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_gwsocket.c_send_holder_to_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @send_holder_to_client(i32 %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %11 = call i8* @calloc(i32 12, i32 1)
  store i8* %11, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  store i8* %12, i8** %10, align 8
  %13 = load i8*, i8** %10, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @pack_uint32(i8* %13, i32 %14)
  %16 = load i8*, i8** %10, align 8
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  store i8* %18, i8** %10, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = call i32 @pack_uint32(i8* %19, i32 1)
  %21 = load i8*, i8** %10, align 8
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  store i8* %23, i8** %10, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @pack_uint32(i8* %24, i32 %25)
  %27 = load i8*, i8** %10, align 8
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  store i8* %29, i8** %10, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @write_holder(i32 %30, i8* %31, i32 12)
  %33 = load i32, i32* %5, align 4
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @write_holder(i32 %33, i8* %34, i32 %35)
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 @free(i8* %37)
  ret i32 0
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @pack_uint32(i8*, i32) #1

declare dso_local i32 @write_holder(i32, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
