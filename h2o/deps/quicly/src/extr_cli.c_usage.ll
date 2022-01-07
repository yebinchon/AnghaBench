; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/src/extr_cli.c_usage.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/src/extr_cli.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1808 x i8] c"Usage: %s [options] host port\0A\0AOptions:\0A  -a <alpn>                 ALPN identifier; repeat the option to set multiple\0A                            candidates\0A  -C <cid-key>              CID encryption key (server-only). Randomly generated\0A                            if omitted.\0A  -c certificate-file\0A  -k key-file               specifies the credentials to be used for running the\0A                            server. If omitted, the command runs as a client.\0A  -e event-log-file         file to log events\0A  -E                        expand Client Hello (sends multiple client Initials)\0A  -i interval               interval to reissue requests (in milliseconds)\0A  -I timeout                idle timeout (in milliseconds; default: 600,000)\0A  -l log-file               file to log traffic secrets\0A  -M <bytes>                max stream data (in bytes; default: 1MB)\0A  -m <bytes>                max data (in bytes; default: 16MB)\0A  -N                        enforce HelloRetryRequest (client-only)\0A  -n                        enforce version negotiation (client-only)\0A  -p path                   path to request (can be set multiple times)\0A  -P path                   path to request, store response to file (can be set multiple times)\0A  -R                        require Retry (server only)\0A  -r [initial-pto]          initial PTO (in milliseconds)\0A  -S [num-speculative-ptos] number of speculative PTOs\0A  -s session-file           file to load / store the session ticket\0A  -V                        verify peer using the default certificates\0A  -v                        verbose mode (-vv emits packet dumps as well)\0A  -x named-group            named group to be used (default: secp256r1)\0A  -X                        max bidirectional stream count (default: 100)\0A  -h                        print this help\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 @printf(i8* getelementptr inbounds ([1808 x i8], [1808 x i8]* @.str, i64 0, i64 0), i8* %3)
  ret void
}

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
