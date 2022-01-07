; ModuleID = '/home/carl/AnghaBench/lede/package/utils/spidev_test/src/extr_spidev_test.c_print_usage.c'
source_filename = "/home/carl/AnghaBench/lede/package/utils/spidev_test/src/extr_spidev_test.c_print_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"Usage: %s [-DsbdlHOLC3]\0A\00", align 1
@.str.1 = private unnamed_addr constant [573 x i8] c"  -D --device   device to use (default /dev/spidev1.1)\0A  -s --speed    max speed (Hz)\0A  -d --delay    delay (usec)\0A  -b --bpw      bits per word \0A  -l --loop     loopback\0A  -H --cpha     clock phase\0A  -O --cpol     clock polarity\0A  -L --lsb      least significant bit first\0A  -C --cs-high  chip select active high\0A  -3 --3wire    SI/SO signals shared\0A  -v --verbose  Verbose (show tx buffer)\0A  -p            Send data (e.g. \221234\\xde\\xad\22)\0A  -N --no-cs    no chip select\0A  -R --ready    slave pulls low to pause\0A  -2 --dual     dual transfer\0A  -4 --quad     quad transfer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @print_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_usage(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %3)
  %5 = call i32 @puts(i8* getelementptr inbounds ([573 x i8], [573 x i8]* @.str.1, i64 0, i64 0))
  %6 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @puts(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
