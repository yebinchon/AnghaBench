; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/ijkavformat/extr_ijkiourlhook.c_ijkio_httphook_reconnect_at.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/ijkavformat/extr_ijkiourlhook.c_ijkio_httphook_reconnect_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"dns_cache_clear\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @ijkio_httphook_reconnect_at to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ijkio_httphook_reconnect_at(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32* null, i32** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @ijk_av_dict_set_int(i32** %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %7, i32 0)
  %9 = call i32 @ijk_av_dict_set_int(i32** %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 1, i32 0)
  %10 = load i32*, i32** %3, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 @ijkio_urlhook_reconnect(i32* %10, i32* %11)
  store i32 %12, i32* %5, align 4
  %13 = call i32 @ijk_av_dict_free(i32** %6)
  %14 = load i32, i32* %5, align 4
  ret i32 %14
}

declare dso_local i32 @ijk_av_dict_set_int(i32**, i8*, i32, i32) #1

declare dso_local i32 @ijkio_urlhook_reconnect(i32*, i32*) #1

declare dso_local i32 @ijk_av_dict_free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
