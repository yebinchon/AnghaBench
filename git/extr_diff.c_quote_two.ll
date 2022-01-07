; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_quote_two.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_quote_two.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @quote_two to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @quote_two(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.strbuf, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @quote_c_style(i8* %8, %struct.strbuf* null, i32* null, i32 1)
  store i32 %9, i32* %5, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @quote_c_style(i8* %10, %struct.strbuf* null, i32* null, i32 1)
  store i32 %11, i32* %6, align 4
  %12 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = call i32 @strbuf_addch(%struct.strbuf* %7, i8 signext 34)
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @quote_c_style(i8* %19, %struct.strbuf* %7, i32* null, i32 1)
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @quote_c_style(i8* %21, %struct.strbuf* %7, i32* null, i32 1)
  %23 = call i32 @strbuf_addch(%struct.strbuf* %7, i8 signext 34)
  br label %29

24:                                               ; preds = %2
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 @strbuf_addstr(%struct.strbuf* %7, i8* %25)
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @strbuf_addstr(%struct.strbuf* %7, i8* %27)
  br label %29

29:                                               ; preds = %24, %17
  %30 = call i8* @strbuf_detach(%struct.strbuf* %7, i32* null)
  ret i8* %30
}

declare dso_local i32 @quote_c_style(i8*, %struct.strbuf*, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
