; ModuleID = '/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_yc.c_usage.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_yc.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2376 x i8] c"Usage: yc [-h] [-v] [-d] [-t] [-s SERVER] [-p PORT] [-c COMPRESS] COMMAND ...\0A\0AOptions:\0A  -h      print help and exit.\0A  -v      print version information.\0A  -d      turn on debug messages.\0A  -t      turn on text protocol mode.\0A  -q      Use quiet commands, if possible.\0A  -s      connect to SERVER.      Default: localhost\0A  -p      TCP port number.        Default: 11211\0A  -c      compression threshold.  Default: 16384\0A\0ACommands:\0A  noop\0A          ping the server.\0A  get KEY\0A          get an object.\0A  getk KEY\0A          get an object with key.\0A  gat KEY EXPIRE\0A          get and touch an object.\0A  gatk KEY EXPIRE\0A          get and touch an object with key.\0A  lag KEY\0A          lock and get an object.\0A  lagk KEY\0A          lock and get an object with key.\0A  touch KEY EXPIRE\0A          touch an object.\0A  set KEY FILE [EXPIRE [FLAGS [CAS]]]\0A          store FILE data.  If FILE is \22-\22, stdin is used.\0A  replace KEY FILE [EXPIRE [FLAGS [CAS]]]\0A          update an existing object. FILE is the same as set.\0A  add KEY FILE [EXPIRE [FLAGS [CAS]]]\0A          create a new object. FILE is the same as set.\0A  rau KEY FILE [EXPIRE [FLAGS]]\0A          replace a locked object then unlock it.\0A          Since this command always fails, do not use this.\0A  incr KEY VALUE [INITIAL [EXPIRE]]\0A          increments an exiting object's value by VALUE.\0A          If INITIAL is given, new object is created when KEY\0A          is not found.  EXPIRE is used only when an object is\0A          created.\0A  decr KEY VALUE [INITIAL [EXPIRE]]\0A          decrements an exiting object's value by VALUE.\0A          If INITIAL is given, new object is created when KEY\0A          is not found.  EXPIRE is used only when an object is\0A          created.\0A  append KEY FILE\0A          append FILE data  FILE is the same as set.\0A  prepend KEY FILE\0A          prepend FILE data  FILE is the same as set.\0A  delete KEY\0A          delete an object.\0A  lock KEY\0A          locks an object.\0A  unlock KEY\0A          this command always fails.  Do not use this.\0A  unlockall\0A          this command has no effect.\0A  flush [DELAY]\0A          flush all unlocked items immediately or after DELAY seconds.\0A  stat [settings|items|sizes]\0A          obtain general or specified statistics.\0A  keys [PREFIX]\0A          dump keys matching PREFIX.\0A  version\0A          shows the server version.\0A  quit\0A          just quits.  Not much interesting.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = call i32 @printf(i8* getelementptr inbounds ([2376 x i8], [2376 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
