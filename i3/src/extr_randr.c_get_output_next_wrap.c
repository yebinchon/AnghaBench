
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ direction_t ;
typedef int Output ;


 int CLOSEST_OUTPUT ;
 int DLOG (char*,int ,int ) ;
 scalar_t__ D_DOWN ;
 scalar_t__ D_LEFT ;
 scalar_t__ D_RIGHT ;
 scalar_t__ D_UP ;
 int FARTHEST_OUTPUT ;
 int * get_output_next (scalar_t__,int *,int ) ;
 int output_primary_name (int *) ;

Output *get_output_next_wrap(direction_t direction, Output *current) {
    Output *best = get_output_next(direction, current, CLOSEST_OUTPUT);

    if (!best) {
        direction_t opposite;
        if (direction == D_RIGHT)
            opposite = D_LEFT;
        else if (direction == D_LEFT)
            opposite = D_RIGHT;
        else if (direction == D_DOWN)
            opposite = D_UP;
        else
            opposite = D_DOWN;
        best = get_output_next(opposite, current, FARTHEST_OUTPUT);
    }
    if (!best)
        best = current;
    DLOG("current = %s, best = %s\n", output_primary_name(current), output_primary_name(best));
    return best;
}
